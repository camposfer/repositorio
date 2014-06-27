//
//  configViewController.m
//  SaludReports3
//
//  Created by Clausulita on 30/04/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "configViewController.h"

@implementation configViewController

@synthesize labelCatalogos, labelRutas, labelRutasArchivo, labelRutasArchivo2;
@synthesize tableRutas, tableRutasArchivo, tableRutasArchivo2;
@synthesize textFieldRutas, textFieldRutasArchivo, textFieldRutasArchivo2;
@synthesize preDatabase, mainDelegate;
@synthesize lastIdArchi;
@synthesize loadingIndicator;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    loadingIndicator = [[LoadingIndicator alloc] init];
    [self.view addSubview:loadingIndicator];
    [loadingIndicator hide];
    /*UIImage *imageBackground = [UIImage imageNamed:@"wall_white2.jpg"];
    // UIImageView *imageView = [[UIImageView alloc] initWithFrame: [self.view bounds]];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, 1024, 720)];
    imageView.image = imageBackground;
    [self.view addSubview:imageView];
    [self.view sendSubviewToBack:imageView];*/
    
    mainDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    [mainDelegate.databaseConnection readFromDatabase];
    preDatabase = mainDelegate.databaseConnection;
    lastIdArchi = 0;
    [self getLastId];
    
    
}

-(void)getLastId{
    
    for (Ruta *rut in preDatabase.arrayRutas) {
        if (rut.idArchi>lastIdArchi) {
            lastIdArchi = rut.idArchi;
            if ([rut.activo isEqualToString: @"YES"] & [rut.tipo isEqualToString: @"GENERA_PRESUPUESTO"] ) {
                labelRutas.text = rut.ruta;
            }
        }
    }
    
}


-(void)updateLabels{
    labelRutas.text = mainDelegate.currentLink;
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)setCatalogos :(UIButton*)sender{
    
    [loadingIndicator show:@"Descargando Catálogos"];
    
    [self performSelector:@selector(setCatalogosAnotherThread:) withObject:sender afterDelay:.1];
    
    
    
}

-(int)updateCatag:(NSString *) catal andTable1:(NSString *)table1 andTable2:(NSString *)table2{
    int errorCode = 0;
    NSMutableArray *catag = [[NSMutableArray alloc] init];
    NSMutableArray *catag2 = [[NSMutableArray alloc] init];
    @try{
        catag = [self obtainFromJson:@"http://desarrollo.salud.gob.mx/dgpop/json/genera_catalogo.php" andKey:catal andDescripcion:@"descripcion" andTable:@"pres_map_columna_hoy"] ;
        catag2 = [self obtainFromJson:@"http://desarrollo.salud.gob.mx/dgpop/json/genera_catalogo.php" andKey:catal andDescripcion:@"descripcion" andTable:@"pres_map_columna_2014_hoy"] ;
        for(claveDesc *cl2 in catag2){
            BOOL claveToAdd = YES;
            for (claveDesc *cl1 in catag){
                if ([cl2.clave isEqualToString:cl1.clave]){
                    claveToAdd = NO;
                }
            }
            if (claveToAdd){
                [catag addObject:cl2];
            }
        }
        // [catag addObjectsFromArray:catag2];
    }@catch (NSException *exception) {
        
        errorCode = 1;
        
    }
    if([mainDelegate.databaseConnection copyTable1AndCreateTable2:table1 andTable2:table2]){
        if (!([mainDelegate.databaseConnection copyTable1ToTable2:table1 andTable2:table2])){
            errorCode = 1;
        }else{
            [mainDelegate.databaseConnection deleteFromTable:table1];
            
        }
    }else{
        if (!([mainDelegate.databaseConnection copyTable1ToTable2:table1 andTable2:table2])){
            errorCode = 1;
        }else{
            [mainDelegate.databaseConnection deleteFromTable:table1];
        }
    }
    if (([catag count] !=0) && (errorCode !=1)){
        for (claveDesc *cl in catag){
            NSString *stringForSql =  [[@"Insert into " stringByAppendingString:table1 ] stringByAppendingString:  [NSString stringWithFormat:@" values(\"%@\", \"%@\",\"%@\")",cl.clave, cl.descripcion, cl.anio]];
            if (!([mainDelegate.databaseConnection addElement:stringForSql])){
                errorCode = 1;
            }
        }
    }else{
        errorCode = 1;
    }
    if (errorCode){
        [self sendMessage:[@"No fue posible descargar el catálogo de" stringByAppendingString:catal] withTitle:@"Error"];
        [mainDelegate.databaseConnection copyTable1ToTable2:table2  andTable2:table1];
        
    }
    return errorCode;
}



-(IBAction)setCatalogosAnotherThread :(UIButton*)sender{
    int errorCode = 0;
    //first we back information of main table
    errorCode = [self updateCatag:@"capitulo" andTable1:@" pres_cat_capitulo " andTable2:@" pres_cat_capitulo2 "];
    errorCode = [self updateCatag:@"partida" andTable1:@" pres_cat_partida " andTable2:@" pres_cat_partida2 "];
    //new modification on january 20
    errorCode = [self updateCatag:@"proyinv" andTable1:@" pres_cat_proy_inv " andTable2:@" pres_cat_proy_inv2 "];
    errorCode = [self updateCatag:@"acti" andTable1:@" pres_cat_acti " andTable2:@" pres_cat_acti2 "];
    errorCode = [self updateCatag:@"concepto" andTable1:@" pres_cat_concepto " andTable2:@" pres_cat_concepto2 "];
    errorCode = [self updateCatag:@"dide" andTable1:@" pres_cat_dide " andTable2:@" pres_cat_dide2 "];
    errorCode = [self updateCatag:@"dver" andTable1:@" pres_cat_dver " andTable2:@" pres_cat_dver2 "];
    errorCode = [self updateCatag:@"entidad" andTable1:@" pres_cat_entidad " andTable2:@" pres_cat_entidad2 "];
    
    //to do filtros predeterminados
    //    errorCode = [self updateCatag:@"pred" andTable1:@" pres_cat_fil_pred2 " andTable2:@" pres_cat_fil_pred2 "];
    
    
    errorCode = [self updateCatag:@"gfun" andTable1:@" pres_cat_gfun " andTable2:@" pres_cat_gfun2 "];
    //it is necessary to define exactly what information is the correct in the two next catalogs (fonc, sfun)
    
    //errorCode = [self updateCatag:@"fonc" andTable1:@" pres_cat_fonc " andTable2:@" pres_cat_fonc2 "];
    //errorCode = [self updateCatag:@"sfun" andTable1:@" pres_cat_sfun " andTable2:@" pres_cat_sfun2 "];
    errorCode = [self updateCatag:@"prog" andTable1:@" pres_cat_prog " andTable2:@" pres_cat_prog2 "];
    errorCode = [self updateCatag:@"programa" andTable1:@" pres_cat_programas " andTable2:@" pres_cat_programas2 "];
    
    [loadingIndicator hide];
    if (errorCode == 0){
        [self sendMessage:@"Actualización realizada con éxito" withTitle:@"Descarga completa"];
    }
}


-(void)decodeErrorCodeToMessage:(int)errorCode{
    [self sendMessage:@"No fue posible actualizar todos los catálogos" withTitle:@"Error"];
    
}

-(void) sendMessage:(NSString*) errMessage withTitle:(NSString *) title{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:errMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
}

-(NSMutableArray* ) obtainFromJson:(NSString *) stringUrl andKey:(NSString *) key andDescripcion:(NSString *) descrip andTable:(NSString*)selectT {
    stringUrl =[[@"http://desarrollo.salud.gob.mx/dgpop/json/genera_catalogo.php" stringByAppendingString:@"?tipo="] stringByAppendingString:key];
    stringUrl = [[stringUrl stringByAppendingString:@"&select_table="] stringByAppendingString:selectT];
    NSData *data=[NSData dataWithContentsOfURL:[NSURL URLWithString:stringUrl ]];
    //NSLog(stringUrl);
    //NSLog(stringUrl);
    // parseo y creación del array
    
    NSMutableArray *arrayResults = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSMutableArray *arrayToReturn = [[NSMutableArray alloc] init];
    for (NSDictionary * item in arrayResults){
        
        NSString *cveResulta = [item objectForKey:@"clave"];
        NSString *descResulta = [item objectForKey:@"descripcion"];    //descrip];
        NSString *anioResulta = [item objectForKey:@"anio"];    //descrip];
        
        //cveResulta = [item objectForKey:key];
        //descResulta = [item objectForKey:@"descripcion"];
        
        
        claveDesc *pr = [[claveDesc  alloc] initWithClave:cveResulta andDescripcion:descResulta andAnio:anioResulta];
        [arrayToReturn addObject:pr];
    }
    return arrayToReturn;
}

-(IBAction)setRuta :(UIButton*)sender{
    int lastId = lastIdArchi+1;
    // NSString *stringForSql =  [NSString stringWithFormat:@"Insert into rutas(id_Archi, Ruta, Activo , Tipo ) values(\"%d\", \"%@\", \"%@\",\"%@\")",lastId, textFieldRutas.text, @"YES" , @"GENERA_PRESUPUESTO"];
    NSString *stringForSql =  [NSString stringWithFormat:@"Insert into rutas values(\"%d\", \"%@\", \"%@\",\"%@\")",lastId, textFieldRutas.text, @"YES" , @"GENERA_PRESUPUESTO"];
    
    //   NSString *insertSQL = [NSString stringWithFormat:@"Insert into rutas(id_Archi, ruta, activo , tipo ) values(\"%d\", \"%@\",\"%@\",\"%@\")",lastId, textFieldRutas.text, @"YES", @"GENERA_PRESUPUESTO"];
    
    [preDatabase addElement:stringForSql];
    [preDatabase readFromDatabase];
    [tableRutas reloadData];
    [self getLastId];
    
}

-(IBAction)deleteRuta :(UIButton*)sender{
    int lastId = lastIdArchi+1;
    NSString *stringForSql =  [NSString stringWithFormat:@"Delete from rutas where ruta = \"%@\"",labelRutas.text];
    
    //[preDatabase  updateRegister:@"rutas" andField:@"activo" andNewData:@"YES" andWhereField:@"ruta" andDataWhere:labelRutas.text ];
    
    [preDatabase addElement:stringForSql];
    [preDatabase readFromDatabase];
    [tableRutas reloadData];
    [self tableView:tableRutas didSelectRowAtIndexPath:tableRutas.indexPathForSelectedRow];
    [self getLastId];
    
}

-(IBAction)setRutaArchivos :(UIButton*)sender{
    
}
-(IBAction)setRutaArchivos2 :(UIButton*)sender{
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}


#pragma code for table starts here

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [preDatabase.arrayRutas count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithFrame:CGRectZero ] ;
    }
    
    // Set up the cell...
    NSString *cellValue;
    Ruta *ruta1;
    ruta1 = [preDatabase.arrayRutas objectAtIndex:indexPath.row];
    cellValue = ruta1.ruta;
    cell.textLabel.text = cellValue;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //NSString *key = [keys objectAtIndex:indexPath.section];
    //NSArray *nameSection = [names objectForKey:key];
    Ruta *rutap;
    rutap = [preDatabase.arrayRutas objectAtIndex:indexPath.row];
    
    
    for (Ruta *ruta1 in preDatabase.arrayRutas) {
        if ([ruta1.ruta isEqualToString:rutap.ruta]){  //active the user selected
            
            [preDatabase  updateRegister:@"rutas" andField:@"activo" andNewData:@"YES" andWhereField:@"ruta" andDataWhere:ruta1.ruta ];
            mainDelegate.currentLink = ruta1.ruta;
            
            
        }else {//desactive the users non selected
            [preDatabase  updateRegister:@"rutas" andField:@"activo" andNewData:@"NO" andWhereField:@"ruta" andDataWhere:ruta1.ruta ];
        }
    }
    
    [preDatabase readFromDatabase];
    [mainDelegate updateCurrentLink];
    labelRutas.text = mainDelegate.currentLink;
    
    
}



@end
