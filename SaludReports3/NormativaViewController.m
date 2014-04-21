//
//  NormativaViewController.m
//  SaludReports3
//
//  Created by Clausulita on 20/03/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "NormativaViewController.h"

@interface NormativaViewController ()

@end

@implementation NormativaViewController

@synthesize tableView, segmentedControl, buttonDelete, buttonDownload, webView;
@synthesize arrayNormativa;
@synthesize loadingIndicator;
@synthesize mainDelegate;


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
    UIImage *imageBackground = [UIImage imageNamed:@"black4.jpg"];
    // UIImageView *imageView = [[UIImageView alloc] initWithFrame: [self.view bounds]];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, 1024, 720)];
    imageView.image = imageBackground;
    //[self.view addSubview:imageView];

    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    buttonDownload.hidden = YES;
    buttonDelete.hidden = YES;
    arrayNormativa = [[NSMutableArray alloc] init];
    mainDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    [mainDelegate.databaseConnection readFromDatabase];
    webView.scalesPageToFit = YES;

    [self setupArray];
    //[self StartWithLoading:buttonDownload];
}


-(IBAction)StartWithLoading:(UIButton*)buttonUpda{
    
    //  [self performSelector:@selector(setupArray:) withObject:nil afterDelay:.01];
    
}

-(NSMutableArray* )cloneArray:(NSMutableArray*)arrayToCopy{
    NSMutableArray *arrayToReturn = [[NSMutableArray alloc] init];
    for (Normativa *nor1 in arrayToCopy) {
        if ([arrayToReturn count] != 0) {
            BOOL sube = YES;
            
            for (Normativa *nor2 in arrayToReturn) {
                if ([nor1.nombrePdf isEqualToString:nor2.nombrePdf] ) {
                    sube = NO;
                }
            }
            if (sube) {
                [arrayToReturn addObject:nor1];
            }
        }else{
            [arrayToReturn addObject:nor1];
        }
    }
    
    return arrayToReturn;
}

-(void)setupArray{
    @try{
        NSMutableArray *arrayTemp = [[NSMutableArray alloc] init];
        NSString *stringUrl =  @"http://desarrollo.salud.gob.mx/dgpop/json/muestra_normatividad.php";
        NSData *data=[NSData dataWithContentsOfURL:[NSURL URLWithString:stringUrl ]];
        // parseo y creación del array
        NSMutableArray *arrayResults = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
 
        for (NSDictionary * item in arrayResults){
            int id_nor;
            NSString *ley;
            NSString *articulo;
            NSString *tema;
            NSString *subtema;
            NSString *subtema2;
            NSString *paginaPdf;
            NSString *detalle;
            NSString *nombrePdf;
            id_nor  = [[item objectForKey:@"id_nor"] intValue] ;
            ley  = [item objectForKey:@"ley"] ;
            articulo  = [item objectForKey:@"articulo"] ;
            tema   = [item objectForKey:@"tema"] ;
            subtema   = [item objectForKey:@"subtema"] ;
            subtema2  = [item objectForKey:@"subtema2"] ;
            paginaPdf  = [item objectForKey:@"paginaPdf"] ;
            detalle  = [item objectForKey:@"Detalle"] ;
            nombrePdf  = [item objectForKey:@"nombrePdf"] ;
            Normativa *nor = [[Normativa alloc] initWithId:id_nor andLey:ley andArticulo:articulo andTema:tema andSubtema:subtema andSubtema2:subtema2 andPagina:paginaPdf andDetalle:detalle andNombrePdf:nombrePdf];
            [arrayTemp addObject:nor];
        }
        if ([arrayTemp count] != 0) {
            arrayNormativa =  [self cloneArray:arrayTemp];
        }
        
    }@catch (NSException *exception) {
        [loadingIndicator hide];
        //[popMenu show:@"No fue posible descargar el archivo de normativa" andTitle:@""];
    }
    
    
}


-(IBAction)downloadRepor:(UIButton*)sender{
    
    
    NSIndexPath *indexPath =   [tableView indexPathForSelectedRow];
    Normativa *nor1 = [arrayNormativa objectAtIndex:indexPath.row];
    NSData *pdfData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:[[NSString  stringWithFormat:@"http://desarrollo.salud.gob.mx/dgpop/json/docs/normatividad/"] stringByAppendingString:nor1.nombrePdf]]];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *filePath = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0],nor1.nombrePdf];
    
    BOOL success = [pdfData writeToFile:filePath atomically:YES];
    if(success){ //se guardo el PDF????
        NSString *stringForSql =  [NSString stringWithFormat:@"Insert into Normativas values(\"%d\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\")",   nor1.id_nor, nor1.ley, nor1.articulo, nor1.tema, nor1.subtema, nor1.subtema2, nor1.paginaPdf, nor1.detalle, nor1.nombrePdf];
        NSLog(stringForSql);
        success =  [mainDelegate.databaseConnection addElement:stringForSql];
        if (success){  // se agrego en la BD?
            [mainDelegate.databaseConnection readFromDatabase];
            [tableView reloadData];
            //[self PlayClick];
            [self sendMessage:@"Descarga realizada con exito" withTitle:@"Confirmación"];
            
        }else {
            [self sendMessage:@"Descarga incorrecta , probablemente un problema con la conexión o el archivo ya se encuentra descargado" withTitle:@"Error"];
        }
    }else {
        [self sendMessage:@"Descarga incorrecta , probablemente un problema con la conexión o el archivo ya se encuentra descargado" withTitle:@"Error"];
    }
}
-(void) sendMessage:(NSString*) errMessage withTitle:(NSString *) title{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:errMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
}

-(IBAction)deleteRepor:(UIButton*)sender{
    NSIndexPath *indexPath =   [tableView indexPathForSelectedRow];
    Normativa *nor1 = [arrayNormativa objectAtIndex:indexPath.row];

    NSFileManager *filemgr;
    
    filemgr = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);

    NSString *filePath = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0],nor1.nombrePdf];
    
    if ([filemgr removeItemAtPath:
         filePath error: NULL]  == YES){
          NSString *stringForSql =  [NSString stringWithFormat:@"DELETE FROM  Normativas  where nombrePdf =  \"%@\"",   nor1.nombrePdf];
        NSLog(stringForSql);
        BOOL success =  [mainDelegate.databaseConnection addElement:stringForSql];
        if (success) {
                 [self sendMessage:@"Borrado correcto" withTitle:@"Confirmación"];
            
                 [mainDelegate.databaseConnection readFromDatabase];
                arrayNormativa = mainDelegate.databaseConnection.arrayNormativas;
                 [tableView reloadData];
            
        }else {
            [self sendMessage:@"Borrado fallido" withTitle:@"Error"];
            
        }
 
    }else{
        [self sendMessage:@"Borrado fallido" withTitle:@"Error"];
    }
}

-(IBAction)changeSelector:(UISegmentedControl*)sender{
    if (segmentedControl.selectedSegmentIndex ==0) {
        [self setupArray];
        buttonDownload.hidden = YES;
        buttonDelete.hidden = YES;
        [tableView reloadData];

    }else{
        buttonDownload.hidden = YES;
 

        arrayNormativa = mainDelegate.databaseConnection.arrayNormativas;
        [tableView reloadData];
        if ([arrayNormativa count] != 0) {
            //buttonDelete.hidden = NO;
        }
    }
}

-(void)clicTable:(NSURL *)urlGraficaSeleccionada{
    
    /* NSURL *targetURL = [NSURL URLWithString:[[[NSString  stringWithFormat:@"http://desarrollo.salud.gob.mx/dgpop/json/docs/"] stringByAppendingString:archivoGrafiSeleccionado] stringByAppendingString: @".pdf"]] ;*/
    NSURLRequest *request = [NSURLRequest requestWithURL:urlGraficaSeleccionada];
    if ([self isConnected:request]) {
        [webView loadRequest:request];
        webView.hidden = NO;  //!webViewPdf.hidden;
        //labelTituloGrafica.hidden = NO;
        buttonDownload.hidden = NO;
        
    }else {
        [self sendErrorMessage:@"No existe conexión, o esta dañado el archivo descargado favor de verificar"];
    }
    
}


-(void) sendErrorMessage:(NSString*) errMessage{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:errMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
}

-(NSData *) isConnected :(NSURLRequest *) request{
    NSURLResponse *resp = nil;
    NSError *err = nil;
    NSData *response = [NSURLConnection sendSynchronousRequest: request returningResponse: &resp error: &err];
    NSString * theString = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
    //NSLog(@"response: %@", theString);
    return response;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath {
    NSURL *targetURL; // = [NSURL URLWithString:archivoGraficaSeleccionadoCompleto] ;
    Normativa *nor1 = [arrayNormativa objectAtIndex:indexPath.row];
    if (segmentedControl.selectedSegmentIndex == 0) { //en linea
        NSString *archivoGraficaSeleccionadoCompleto = [[NSString  stringWithFormat:@"http://desarrollo.salud.gob.mx/dgpop/json/docs/normatividad/"] stringByAppendingString:nor1.nombrePdf];
        targetURL = [NSURL URLWithString:archivoGraficaSeleccionadoCompleto] ;
        buttonDownload.hidden = NO;
        [self clicTable:targetURL];      
    }else{ //descargados
        
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *filePath = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0],nor1.nombrePdf];
        targetURL = [NSURL fileURLWithPath:filePath];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webView loadRequest:request];
        buttonDelete.hidden = NO;
        [self clicTable:targetURL];
        buttonDownload.hidden = YES;
    }
    
 
        

    
    
}

#pragma CODE FOR TABLE


- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 30)];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 3, tableView.bounds.size.width - 10, 18)];
    if  (segmentedControl.selectedSegmentIndex == 0 ){
        label.text =  @"Normativa en linea";
    }else {
        label.text =  @"Normativa descargada";
    }
    
    label.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1];
    UIImage *imageHeader = [UIImage imageNamed:@"blue6.jpg"];
    UIColor *colorHeader = [UIColor colorWithPatternImage:imageHeader];
    label.backgroundColor = [UIColor clearColor];
    [headerView addSubview:label];
    label.textAlignment = UITextAlignmentCenter;
    if (section == 0)
        [headerView setBackgroundColor:colorHeader];
    else
        [headerView setBackgroundColor:[UIColor clearColor]];
    return headerView;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arrayNormativa count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithFrame:CGRectZero ] ;
    }
    Normativa *nor1 = [arrayNormativa objectAtIndex:indexPath.row];
    UIImage *imageHeader = [UIImage imageNamed:@"bluw-bright.png"];
    CGSize imageSize = imageHeader.size;
    UIImageView *imageViewCell = [[UIImageView alloc] initWithImage:imageHeader];
    [imageViewCell setFrame:CGRectMake(0,0,  100, 40)];
    UIColor *colorHeader = [UIColor colorWithPatternImage:imageHeader];

    [cell setBackgroundColor:colorHeader ] ;
    //[cell addSubview:imageViewCell];
    //[cell sendSubviewToBack:imageViewCell];
    // Set up the cell...
    NSString *cellValue;
    cellValue = nor1.ley;
    UIImage *rowBackground;
    UIImage *selectionBackground;
    int row = indexPath.row;
    NSInteger sectionRows = [tableView numberOfRowsInSection:[indexPath section]];
    if (row != 0 && row != sectionRows - 1)  //solo en los renglones de en medio
    {
        //rowBackground = [UIImage imageNamed:@"topAndBottomRow.png"];
        selectionBackground = [UIImage imageNamed:@"carbon.jpg"];
    }
    
    //((UIImageView *)cell.selectedBackgroundView).image = selectionBackground;
    //cell.sele
    cell.text = cellValue;
    [cell.textLabel setFont:[UIFont systemFontOfSize:12]];
    cell.textLabel.numberOfLines = 4; //Change this value to show more or less lines.
    
    return cell;
}



- (void)showLoadingIndicator:(NSString *)theMessage {
    
    [self.loadingIndicator performSelectorOnMainThread:@selector(show:) withObject:theMessage waitUntilDone:NO];
    
}

- (void)hideLoadingIndicator {
    
    [self.loadingIndicator performSelectorOnMainThread:@selector(hide) withObject:nil waitUntilDone:NO];
    
}



- (void) webViewDidStartLoad:(UIWebView *)webView {
    
    [self showLoadingIndicator:@"Cargando"];
}

- (void) webViewDidFinishLoad:(UIWebView *)webView {
    
    [self hideLoadingIndicator];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
