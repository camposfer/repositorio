
//
//  DatabaseConexion.m
//  SaludReports
//
//  Created by Clausulita on 28/08/12.
//  Copyright (c) 2012 HJM. All rights reserved.
//

#import "DatabaseConnection.h"

@implementation DatabaseConnection

@synthesize arrayRutas;
@synthesize databasePathD, databaseD, databaseNameD;
@synthesize arrayPresupuesto;
@synthesize arrayArchivos;
@synthesize arrayActi, arrayCapitulo, arrayCcp, arrayConcepto, arrayDide, arrayDver, arrayEntidad, arrayPred, arrayProg, arrayPrograma, arrayProyInv, arrayUnid;
@synthesize arrayInformes, arrayNormativas;
@synthesize arrayPeriodos;

-(void) initConnection: (NSString *)databaseName  {
    //if (!self) {
    //self =   [[super alloc] init];
    databaseNameD = databaseName ;
    
    //Get the path to the documents directory and append the database Name
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [documentPaths objectAtIndex:0];
    databasePathD = [documentsDir stringByAppendingPathComponent:databaseNameD];
    
    //}
    
    
}
-(void) checkAndCreateDatabase{
    
    //Check if the database has already been saved to the users Phone if not then copy it over
    BOOL success;
    //Create a file manager object we will use this to check the status
    //of the database and copy over it if required
    NSFileManager * fileManager = [NSFileManager defaultManager];
    //check if the database already exists then return without doing anything
    success = [fileManager fileExistsAtPath:databasePathD];
    
    if (success ){
        
        
        //success =    [fileManager removeItemAtPath:databasePathD error:NULL];
        
        return;
    }
    //success =    [fileManager removeItemAtPath:databasePath error:NULL];
    
    //if not then proceed to copy the database from the application to the users filesystem
    
    //Get the path to the database in the application package
    NSString * databasePathFromApp = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:databaseNameD];
    //Copy the database from the package to the users filesystem
    
    success = [fileManager    copyItemAtPath:databasePathFromApp toPath:databasePathD error:nil];
    
    //Check if the database has already been created in the users fileSystem
    
}




-(void) readFromDatabase{
    //setup the database object
    
    //init the animals array
    
    arrayRutas = [[NSMutableArray alloc] init];
    arrayNormativas = [[NSMutableArray alloc] init];
    arrayInformes = [[NSMutableArray alloc] init];
    
    
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = "select * from rutas";
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                //Read the data from the result row
                int  aId =sqlite3_column_int(compiledStatement, 0);
                
                NSString *aWord =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 1)];
                NSString *aType =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 2)];
                NSString *aDif =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 3)];
                
                Ruta *ruta1 = [[Ruta alloc] initWithId:aId andRuta:aWord andActivo:aType andTipo:aDif];
                //Add the ruta object to the objects array
                
                [arrayRutas  addObject:ruta1 ];
                
                
                
            }
            sqlite3_finalize(compiledStatement);
            
        }
        
        //second query
 
        
        printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
        sqlite3_close(databaseD);
    }
    
 
    
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = "select * from Normativas";
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                //Read the data from the result row
                int  aId =sqlite3_column_int(compiledStatement, 0);
                
                NSString *aLey =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 1)];
                NSString *aArticulo=[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 2)];
                NSString *aTema =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 3)];
                NSString *aSubtema =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 4)];
                NSString *aSubtema2 =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 5)];
                NSString *aPagina =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 6)];
                NSString *aDetalle =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 7)];
                NSString *aNombrePdf =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 8)];
                
                Normativa *nor1 = [[Normativa alloc] initWithId:aId andLey:aLey andArticulo:aArticulo andTema:aTema andSubtema:aSubtema andSubtema2:aSubtema2 andPagina:aPagina andDetalle:aDetalle andNombrePdf:aNombrePdf];
                
                [arrayNormativas  addObject:nor1 ];
                
                
                
            }
            sqlite3_finalize(compiledStatement);
            
        }
        
        //second query
        
        
        printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
        sqlite3_close(databaseD);
    }

    
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = "select * from Informes";
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                //Read the data from the result row
                int  aId =sqlite3_column_int(compiledStatement, 0);
                
 
                NSString *aDescripcion =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 1)];
                NSString *aNombrePdf =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 2)];
                
                Informe *nor1 = [[Informe alloc]
                                 initWithId:aId andDescripcion:aDescripcion andNombrePdf:aNombrePdf];
                
                [arrayInformes addObject:nor1 ];
                
                
                
            }
            sqlite3_finalize(compiledStatement);
            
        }
        
        //second query
        
        
        printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
        sqlite3_close(databaseD);
    }
   
    
    
    
    
    
    
}


-(void) readPeriodos:(NSString*)queryP{
    
    arrayPeriodos = [[NSMutableArray alloc] init];
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        // const char *sqlStatement = "SELECT cap, (SELECT fc_desc_capitulo FROM 	                pres_cat_capitulo WHERE fc_id_capitulo = cap) as descripcion, SUM(original) as original, SUM(modificado) as modificado, (SUM(modificado) - SUM(ejercido)) as disponible, sum(dis_ene+dis_feb+dis_mar) as dispo60, sum(mod_ene+mod_feb+mod_mar+mod_abr+mod_may) as modp ,  SUM(eje_ene+eje_feb+eje_mar+eje_abr+eje_may) as ejercido , (sum(mod_ene+mod_feb+mod_mar+mod_abr+mod_may) - SUM(eje_ene+eje_feb+eje_mar+eje_abr+eje_may)) as disponiblep FROM pres_map_columna  WHERE fecha = '2013-05-29'  GROUP BY  cap"; // GROUP BY cap "; //WHERE fecha = '2013-05-23'  GROUP BY  cap";

        const char *sqlStatement = [queryP UTF8String];
        
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                //Read the data from the result row
                //int  aCa =sqlite3_column_int(compiledStatement, 0);
                NSString *aPer =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 0)];
                

                //Add the ruta object to the objects array
                
                [arrayPeriodos addObject:aPer ];
                
                
                
            }
            sqlite3_finalize(compiledStatement);
            
        }
    }
    printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
    sqlite3_close(databaseD);
    //second query to obtain sums
  
    
    
}


-(void) readFromPpto:(NSString*) queryP{
    //setup the database object
    
    //init the animals array
    NSLog(queryP);
    self.arrayPresupuesto = [[NSMutableArray alloc] init];
    
    
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
       // const char *sqlStatement = "SELECT cap, (SELECT fc_desc_capitulo FROM 	                pres_cat_capitulo WHERE fc_id_capitulo = cap) as descripcion, SUM(original) as original, SUM(modificado) as modificado, (SUM(modificado) - SUM(ejercido)) as disponible, sum(dis_ene+dis_feb+dis_mar) as dispo60, sum(mod_ene+mod_feb+mod_mar+mod_abr+mod_may) as modp ,  SUM(eje_ene+eje_feb+eje_mar+eje_abr+eje_may) as ejercido , (sum(mod_ene+mod_feb+mod_mar+mod_abr+mod_may) - SUM(eje_ene+eje_feb+eje_mar+eje_abr+eje_may)) as disponiblep FROM pres_map_columna  WHERE fecha = '2013-05-29'  GROUP BY  cap"; // GROUP BY cap "; //WHERE fecha = '2013-05-23'  GROUP BY  cap";
        const char *sqlStatement = [queryP UTF8String];
        
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                //Read the data from the result row
                //int  aCa =sqlite3_column_int(compiledStatement, 0);
                NSString *aClave =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 0)];
                NSString *aDesc=@"";
                @try {
                    aDesc =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 1)];
                    
                }
                @catch (NSException *exception) {
                    
                }
                @finally {

                }
                
                double  aOri =sqlite3_column_double(compiledStatement, 2);
                double  aMod =sqlite3_column_double(compiledStatement, 3);
                double  aDis =sqlite3_column_double(compiledStatement, 4);
                double  aDis60 =sqlite3_column_double(compiledStatement, 5);
                double  aModp =sqlite3_column_double(compiledStatement, 6);
                double  aEje =sqlite3_column_double(compiledStatement, 7);
                double  aDisp =sqlite3_column_double(compiledStatement, 8);
  
                //NSString *aClave = [[NSString alloc] initWithFormat:@"%d",aCa];
                
                Presupuesto *Pre1 = [[Presupuesto alloc] initWithClave:aClave andDescripcion:aDesc andOriginal:aOri andModificado:aMod andDisponible:aDis andDispo60:aDis60 andModp:aModp andEjercido:aEje andDisponiblep:aDisp  ];
                //Add the ruta object to the objects array
                
                [arrayPresupuesto  addObject:Pre1 ];
                
                
                
            }
            sqlite3_finalize(compiledStatement);
            
        }
    }
        printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
        sqlite3_close(databaseD);
        //second query to obtain sums
  

}

-(void) readFromPptoTotal:(NSString*) queryP{
    
 
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        const char *sqlStatement = [queryP UTF8String];
        //const char *sqlStatement = "SELECT  SUM(original) as original, SUM(modificado) as modificado, (SUM(modificado) - SUM(ejercido)) as disponible, sum(dis_ene+dis_feb+dis_mar) as dispo60, sum(mod_ene+mod_feb+mod_mar+mod_abr+mod_may) as modp ,  SUM(eje_ene+eje_feb+eje_mar+eje_abr+eje_may) as ejercido , (sum(mod_ene+mod_feb+mod_mar+mod_abr+mod_may) - SUM(eje_ene+eje_feb+eje_mar+eje_abr+eje_may)) as disponiblep FROM pres_map_columna  WHERE fecha = '2013-05-29' "; // GROUP BY cap "; //WHERE fecha = '2013-05-23'  GROUP BY  cap";
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                //Read the data from the result row
                //int  aCa =sqlite3_column_int(compiledStatement, 0);
                
                //NSString *aDesc =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 1)];
                double  aOri =sqlite3_column_double(compiledStatement, 0);
                double  aMod =sqlite3_column_double(compiledStatement, 1);
                double  aDis =sqlite3_column_double(compiledStatement, 2);
                double  aDis60 =sqlite3_column_double(compiledStatement, 3);
                double  aModp =sqlite3_column_double(compiledStatement, 4);
                double  aEje =sqlite3_column_double(compiledStatement, 5);
                double  aDisp =sqlite3_column_double(compiledStatement, 6);
                
                // NSString *aClave = [[NSString alloc] initWithFormat:@"%d",aCa];
                
                Presupuesto *Pre1 = [[Presupuesto alloc] initWithClave:@"" andDescripcion:@"TOTAL" andOriginal:aOri andModificado:aMod andDisponible:aDis andDispo60:aDis60 andModp:aModp andEjercido:aEje andDisponiblep:aDisp  ];
                //Add the ruta object to the objects array
                
                [self.arrayPresupuesto  addObject:Pre1 ];
                
            }
            sqlite3_finalize(compiledStatement);
            
            
        }
        
        printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
        sqlite3_close(databaseD);
        
        
    }
    
    
}


-(void) readFromCatalogo:(NSString*) queryP andTipo:(NSString *) tipo{
    
    if ([tipo isEqualToString:@"unid" ] ) {
        self.arrayUnid = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"capitulo"]){
        self.arrayCapitulo = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"concepto"]){
        self.arrayConcepto = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"programa"]){
        self.arrayPrograma = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"partida"]){
        self.arrayCcp = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"reasignaciones"]){
        self.arrayProg = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"actividad"]){
        self.arrayActi = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"proyinv"]){
        self.arrayProyInv = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"tipo_gasto"]){
        self.arrayDide = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"fuente"]){
        self.arrayDver = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"entidad"]){
        self.arrayEntidad = [[NSMutableArray alloc] init];
    }else if ([tipo isEqualToString:@"pred"]){
        self.arrayPred = [[NSMutableArray alloc] init];
        
    }
    
    
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        const char *sqlStatement = [queryP UTF8String];
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                NSString *aClave =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 0)];
                NSString *aDesc=@"";
                @try {
                    aDesc =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 1)];
                    
                }
                @catch (NSException *exception) {
                    
                }
                @finally {
                    
                }
                

                
                ElemClave *Pre1 = [[ElemClave alloc] initWithClave:aClave andDescripcion:aDesc];
                //Add the ruta object to the objects array
                
                
                if ([tipo isEqualToString:@"unid" ] ) {
                    [ self.arrayUnid  addObject:Pre1]; 
                }else if ([tipo isEqualToString:@"capitulo"]){
                    [self.arrayCapitulo addObject:Pre1];
                }else if ([tipo isEqualToString:@"concepto"]){
                   [ self.arrayConcepto addObject:Pre1];
                }else if ([tipo isEqualToString:@"programa"]){
                    [self.arrayPrograma addObject:Pre1];
                }else if ([tipo isEqualToString:@"partida"]){
                    [self.arrayCcp addObject:Pre1];
                }else if ([tipo isEqualToString:@"reasignaciones"]){
                    [self.arrayProg addObject:Pre1];
                }else if ([tipo isEqualToString:@"actividad"]){
                   [ self.arrayActi addObject:Pre1];
                }else if ([tipo isEqualToString:@"proyinv"]){
                   [ self.arrayProyInv addObject:Pre1];
                }else if ([tipo isEqualToString:@"tipo_gasto"]){
                   [ self.arrayDide  addObject:Pre1];
                }else if ([tipo isEqualToString:@"fuente"]){
                   [ self.arrayDver  addObject:Pre1];
                }else if ([tipo isEqualToString:@"entidad"]){
                   [ self.arrayEntidad addObject:Pre1];
                }else if ([tipo isEqualToString:@"pred"]){
                    Predefinido *Pre1 = [[Predefinido alloc] initWithId:0 andName:aDesc andClave:aClave andValue:@"" andSentence:@""  ];
                    [ self.arrayPred  addObject:Pre1];
                    
                }
                
                
                
            }
            sqlite3_finalize(compiledStatement);
            
        }
    }
    printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
    sqlite3_close(databaseD);
    //second query to obtain sums
    
}



-(BOOL) deleteRegisterbyId:(int)idToDelete andTable:(NSString *)tabl{
    
    BOOL respuesta = NO;
    NSString *deleteStatementsNS = [[ @"Delete from  " stringByAppendingString:tabl] stringByAppendingString: [NSString stringWithFormat: @" where id = %d", idToDelete]];
    const char *deleteStatement = [deleteStatementsNS UTF8String];
    sqlite3 *db;
    sqlite3_stmt *statement;
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [documentPaths objectAtIndex:0];
    databasePathD = [documentsDir stringByAppendingPathComponent:databaseNameD];
    
    const char *dbpath = [databasePathD UTF8String];
    
    if(sqlite3_open(dbpath, &db) == SQLITE_OK){
        
        if (sqlite3_prepare_v2(db, deleteStatement, -1, &statement, NULL) == SQLITE_OK){
            if ((sqlite3_step(statement)) == SQLITE_DONE){
                respuesta = YES;
            }
            
        }
        
        
        
        sqlite3_finalize(statement);
        sqlite3_close(db);
    }
    //[shoppingListItems removeObjectAtIndex:indexPath.row];
    // [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
    // [tableView reloadData];
    return respuesta;
}


-(BOOL) deleteRegisterbyId:(int)idToDelete{
    
    BOOL respuesta = NO;
    NSString *deleteStatementsNS = [NSString stringWithFormat: @"Delete from record where id = %d", idToDelete];
    const char *deleteStatement = [deleteStatementsNS UTF8String];
    sqlite3 *db;
    sqlite3_stmt *statement;
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [documentPaths objectAtIndex:0];
    databasePathD = [documentsDir stringByAppendingPathComponent:databaseNameD];
    
    const char *dbpath = [databasePathD UTF8String];
    
    if(sqlite3_open(dbpath, &db) == SQLITE_OK){
        
        if (sqlite3_prepare_v2(db, deleteStatement, -1, &statement, NULL) == SQLITE_OK){
            if ((sqlite3_step(statement)) == SQLITE_DONE){
                respuesta = YES;
            }
            
        }
        
        
        
        sqlite3_finalize(statement);
        sqlite3_close(db);
    }
    //[shoppingListItems removeObjectAtIndex:indexPath.row];
    // [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
    // [tableView reloadData];
    return respuesta;
}

//method to clean the database, because is needed only 10 records
-(void) cleanDatabase{
    //setup the database object
    
    //init the animals array
    
    NSMutableArray *recordsToClean = [[NSMutableArray alloc] init];
    int countRegister = 1;
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = "select * from record order by time";
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                //Read the data from the result row
                int  aId =sqlite3_column_int(compiledStatement, 0);
                if (countRegister > 10 ) {
                    NSNumber *numberId = [[NSNumber alloc] initWithInt:aId];
                    [recordsToClean addObject:numberId];
                    
                }
                
                
                countRegister++;
            }
            sqlite3_finalize(compiledStatement);
            
        }
        printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
        sqlite3_close(databaseD);
    }
    
    
    for (int i = 0; i<recordsToClean.count; i++) {
        int idToDelete = [[recordsToClean objectAtIndex:i] intValue];
        [self deleteRegisterbyId: idToDelete];
        
    }
}

//return yes if it's a new time record
-(BOOL) isLowerThanExistRegister:(NSString *) newTime {
    //setup the database object
    
    //init the animals array
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss.S"];
    NSDate *newDate = [dateFormatter dateFromString:newTime];
    int nconta= 0;
    BOOL keepChecking = YES;
    BOOL isLower = NO;
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = "select * from record order by time";
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while ((sqlite3_step(compiledStatement)==SQLITE_ROW) && keepChecking) {
                //Read the data from the result row
                NSString *aTime =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 3)];
                NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
                [dateFormatter setDateFormat:@"HH:mm:ss.S"];
                NSDate *oldDate = [dateFormatter dateFromString:aTime];
                nconta++;
                /*if (newTime < aTime) {
                 isLower = YES;
                 keep	Checking = NO;
                 }*/
                if (newDate < oldDate) {
                    isLower = YES;
                    keepChecking = NO;
                }
                
            }
            sqlite3_finalize(compiledStatement);
            
        }
        // printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
        sqlite3_close(databaseD);
    }
    if (nconta == 0){  //there's no register in database so is lower by default
        isLower = YES;
    }
    return isLower;
}

-(BOOL) updateRegister:(NSString *) table andId:(int)idToUpdate andField:(NSString *)field andNewData:(NSString *) newData{
    
    //NSString *sentenceString = [[[[[[[@"UPDATE " stringByAppendingString:table] stringByAppendingString:@" SET "] stringByAppendingString: field] stringByAppendingString:@" = "] stringByAppendingString:newData] stringByAppendingString:@" WHERE id = "] stringByAppendingString:[NSString stringWithFormat:@"%d",idToUpdate] ];
    NSString *sentenceString = [[[[[[[@"UPDATE " stringByAppendingString:table] stringByAppendingString:@" SET "] stringByAppendingString: field] stringByAppendingString:@" = "] stringByAppendingString:@"? "] stringByAppendingString:@" WHERE id = "] stringByAppendingString:@" ? " ];
    sqlite3_stmt *updateStmt;
    const char *sql = [sentenceString UTF8String];
    //const char *sql = "update Account Set currentBalance = ? Where ID = ?";
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        if(sqlite3_prepare_v2(databaseD, sql, -1, &updateStmt, NULL) != SQLITE_OK)
            NSLog(@"Error while creating update statement. %s", sqlite3_errmsg(databaseD));
        
    }
    sqlite3_bind_text(updateStmt, 1, [newData UTF8String], -1, SQLITE_TRANSIENT);
    
    sqlite3_bind_int(updateStmt, 2 , idToUpdate);
    char* errmsg;
    sqlite3_exec(databaseD, "COMMIT", NULL, NULL, &errmsg);
    
    if(SQLITE_DONE != sqlite3_step(updateStmt))
        NSLog(@"Error while updating. %s", sqlite3_errmsg(databaseD));
    sqlite3_finalize(updateStmt);
    return YES;
}


-(BOOL) updateRegister:(NSString *) table  andField:(NSString *)field andNewData:(NSString *) newData andWhereField:(NSString*)whereF andDataWhere:(NSString*)dataWhere{
    
    //NSString *sentenceString = [[[[[[[@"UPDATE " stringByAppendingString:table] stringByAppendingString:@" SET "] stringByAppendingString: field] stringByAppendingString:@" = "] stringByAppendingString:newData] stringByAppendingString:@" WHERE id = "] stringByAppendingString:[NSString stringWithFormat:@"%d",idToUpdate] ];
    //NSString *sentenceString = [[[[[[[[[[@"UPDATE " stringByAppendingString:table] stringByAppendingString:@" SET "] stringByAppendingString: field] stringByAppendingString:@" = "] stringByAppendingString:@"? "] stringByAppendingString:@" WHERE "] stringByAppendingString:whereF ] stringByAppendingString:@" = ? "] stringByAppendingString:dataWhere ] stringByAppendingString:@" ? " ];

    NSString *sentenceString = [[[[[[[[@"UPDATE " stringByAppendingString:table] stringByAppendingString:@" SET "] stringByAppendingString: field] stringByAppendingString:@" = "] stringByAppendingString:@"? "] stringByAppendingString:@" WHERE "] stringByAppendingString:whereF ] stringByAppendingString:@" = ?"];

    sqlite3_stmt *updateStmt;
    const char *sql = [sentenceString UTF8String];
    //const char *sql = "update Account Set currentBalance = ? Where ID = ?";
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        if(sqlite3_prepare_v2(databaseD, sql, -1, &updateStmt, NULL) != SQLITE_OK){
            NSLog(@"Error while creating update statement. %s", sqlite3_errmsg(databaseD));
            return NO;
        }
        
    }
    
    sqlite3_bind_text(updateStmt, 1, [newData UTF8String], -1, SQLITE_TRANSIENT);
    
    //sqlite3_bind_text(updateStmt, 2, [whereF UTF8String], -1, SQLITE_TRANSIENT);
    
    sqlite3_bind_text(updateStmt, 2, [dataWhere UTF8String], -1, SQLITE_TRANSIENT);
    //sqlite3_bind_int(updateStmt, 2 , idToUpdate);
    char* errmsg;
    sqlite3_exec(databaseD, "COMMIT", NULL, NULL, &errmsg);
    
    if(SQLITE_DONE != sqlite3_step(updateStmt)){
        NSLog(@"Error while updating. %s", sqlite3_errmsg(databaseD));
        return  NO;
    }
    sqlite3_finalize(updateStmt);
    return YES;
}




-(BOOL) addUser:(NSString *) table andId:(int)idToUpdate andName:(NSString *)field andLevel:(NSString *) newData{
    
    BOOL respuesta;
    //databaseNameD = @"Records.sql";
    
    //Get the path to the documents directory and append the database Name
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [documentPaths objectAtIndex:0];
    //databasePathD = [documentsDir stringByAppendingPathComponent:databaseNameD];
    sqlite3_stmt *statement;
    sqlite3 *db;
    
    const char *dbpath = [databasePathD UTF8String];
    
    if(sqlite3_open(dbpath, &db) == SQLITE_OK){
        NSString *insertSQL = [NSString stringWithFormat:@"Insert into settings(rowid, level, user, iduser, active ) values(\"%d\", \"%@\",\"%@\",\"%d\",\"%@\")",idToUpdate, newData ,field, idToUpdate, @"NO"];
        const char *insert_stmt = [insertSQL UTF8String];
        sqlite3_prepare_v2(db, insert_stmt, -1, &statement, NULL);
        if(sqlite3_step(statement) == SQLITE_DONE){
            NSLog(@"Insert successful(reporte)");
            respuesta = YES;
        }else{
            //NSLog(@"Insert failed");
            respuesta = NO;
            NSLog(@"Error while inserting. %s", sqlite3_errmsg(databaseD));

        }
        sqlite3_finalize(statement);
        sqlite3_close(db);
    }
    
    return respuesta;
    
}



-(NSString *) addNewDate:(NSMutableArray *) arrayData andNameDate:(NSString*)nameDate  andDateDescrip:(NSString*) nameDateDescrip andAnio:(NSString *)An andEstatus:(int)est{
    
    int respuesta = 0;
    //databaseNameD = @"Records.sql";
    int control = 0;
    //Get the path to the documents directory and append the database Name
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [documentPaths objectAtIndex:0];
    //databasePathD = [documentsDir stringByAppendingPathComponent:databaseNameD];
    sqlite3_stmt *statement;
    sqlite3 *db;
    //this var is to verify if at the end is the same number of registers
    int countToValidate = [arrayData count];
    const char *dbpath = [databasePathD UTF8String];
    NSString *dateDB = @"";
    if(sqlite3_open(dbpath, &db) == SQLITE_OK){
        //(ID, CICLO, RAMO, UNIDAD, GF, FUNCION, SUBFUNCION, PROGRAMA, ACTIVIDAD_INST
        for (ClaveP* clav in arrayData) {
            if ([dateDB isEqualToString:@""]) {
                dateDB = clav.fecha;
            }
            NSString *insertSQL = [NSString stringWithFormat:@"Insert into pres_map_columna values(\"%d\",\"%@\",\"%@\",\"%@\",\"%d\",\"%d\",\"%d\",\"%d\",\"%d\",\"%@\",\"%d\",\"%d\",\"%d\",\"%d\",\"%d\",\"%@\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%@\",\"%@\",\"%@\",\"%@\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%f\",\"%d\")", clav.idC, clav.ciclo, clav.ramo, clav. unidad, clav.gf, clav.funcion, clav.subfuncion, clav.programa, clav.actividad_inst, clav.iden_proy, clav.proyecto, clav.partida, clav.tipo_gasto, clav.fuente_finan, clav.ent_fed, clav.clave_cartera, clav.original, clav.ori_ene, clav.ori_feb, clav.ori_mar, clav.ori_abr, clav.ori_may, clav.ori_jun, clav.ori_jul, clav.ori_ago, clav.ori_sep, clav.ori_oct, clav.ori_nov, clav.ori_dic, clav.modificado, clav.mod_ene, clav.mod_feb, clav.mod_mar, clav.mod_abr, clav.mod_may, clav.mod_jun, clav.mod_jul, clav.mod_ago, clav.mod_sep, clav.mod_oct, clav.mod_nov, clav.mod_dic, clav.ejercido, clav.eje_ene, clav.eje_feb, clav.eje_mar, clav.eje_abr, clav.eje_may, clav.eje_jun, clav.eje_jul, clav.eje_ago, clav.eje_sep, clav.eje_oct, clav.eje_nov, clav.eje_dic, clav.cap, clav.con, clav.prog, clav.fecha,  clav.dis_ene, clav.dis_feb, clav.dis_mar, clav.dis_abr, clav.dis_may, clav.dis_jun, clav.dis_jul, clav.dis_ago, clav.dis_sep, clav.dis_oct, clav.dis_nov, clav.dis_dic, clav.gsgf   ];

             // NSString *insertSQL = [NSString stringWithFormat:@"Insert into pres_map_columna (ID, CICLO, RAMO, UNIDAD, GF, FUNCION, SUBFUNCION, PROGRAMA, ACTIVIDAD_INST, IDEN_PROY, PROYECTO, PARTIDA, TIPO_GASTO, FUENTE_FINAN, ENTIDAD_FED, CLAVE_CARTERA)  values(\"%d\",\"%@\",\"%@\",\"%@\",\"%d\",\"%d\",\"%d\",\"%d\",\"%d\",\"%@\",\"%d\",\"%d\",\"%d\",\"%d\",\"%d\",\"%@\")", clav.idC, clav.ciclo, clav.ramo, clav. unidad, clav.gf, clav.funcion, clav.subfuncion, clav.programa, clav.actividad_inst, clav.iden_proy, clav.proyecto, clav.partida, clav.tipo_gasto, clav.fuente_finan, clav.ent_fed, clav.clave_cartera ];

            
            // NSLog(insertSQL);
            
            const char *insert_stmt = [insertSQL UTF8String];
            sqlite3_prepare_v2(db, insert_stmt, -1, &statement, NULL);
            if(sqlite3_step(statement) == SQLITE_DONE){
                //NSLog(@"Insert successful(presupuesto)");
                respuesta = 1;
            }else{
                //NSLog(@"Insert failed");
                NSLog(@"Error while creating insert statement. %s", sqlite3_errmsg(databaseD));

                respuesta = -1;
            }
        }
        sqlite3_finalize(statement);
        //sqlite3_close(db);

    }
    
    
    if ([self countDatabaseRegister:[@"select count(id) from pres_map_columna  where fecha=" stringByAppendingString:nameDate]] == countToValidate) {
        respuesta = 2;
    }else{
        respuesta = -2;
    }
    
    
    if (respuesta == 2) {
        //agregamos el registro en los registros de fechas
        //[self readArchivos:  @"SELECT id_reg_archivo, fc_nombre, fc_descripcion from pres_reg_archivos WHERE anio = '2013' "];
        [self readArchivos:  @"SELECT id_reg_archivo, fc_nombre, fc_descripcion from pres_reg_archivos "];
        int lastId = 0;
        for (ArchivoDesc* ar in arrayArchivos) {
            if (ar.id_reg_archivo > lastId) {
                lastId = ar.id_reg_archivo;
            }
        }
        
        NSString *nameArchi  = [ @"data.php?fecha=" stringByAppendingString:dateDB];
        
        NSString *insertSQL = [NSString stringWithFormat: @"Insert into pres_reg_archivos (id_reg_archivo, fc_nombre, fc_descripcion, fi_estatus, anio) values(\"%d\",\"%@\",\"%@\",\"%@\",\"%@\")",lastId+1, nameArchi , nameDateDescrip , [NSString stringWithFormat:@"%d" ,2], An];
           if(sqlite3_open(dbpath, &db) == SQLITE_OK){
               const char *insert_stmt = [insertSQL UTF8String];
               sqlite3_prepare_v2(db, insert_stmt, -1, &statement, NULL);
               if(sqlite3_step(statement) == SQLITE_DONE){
                   //NSLog(@"Insert successful(presupuesto)");
                   respuesta = 3;
               }else{
                   //NSLog(@"Insert failed");
                   NSLog(@"Error while creating insert statement. %s", sqlite3_errmsg(databaseD));
                   
                   respuesta = -3;
               }
              sqlite3_finalize(statement);
              sqlite3_close(db);
               
           }
        
    }
    
    NSString *reponse;
    if (respuesta ==3) {
       reponse = @"Descarga exitosa";
    }else if (respuesta==-1){
        reponse = @"Descarga errónea: No fue posible actualizar BD de presupuesto local";
    }else if (respuesta==-2){
        reponse = @"Descarga errónea: No fue coincide el número de registros descargados";
    }else if (respuesta==-3){
        reponse = @"Descarga errónea: No fue posible actualizar la BD de registro de  archivos";
    }
    return reponse;
    
}





-(int) countDatabaseRegister:(NSString*)query{
    int aCa = 0;

    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = [query UTF8String]; ; //
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                //Read the data from the result row
                aCa =sqlite3_column_int(compiledStatement, 0);
             }
            sqlite3_finalize(compiledStatement);
            
        }
    }
    printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
    sqlite3_close(databaseD);
    return aCa;
}

-(BOOL) copyTable1ToTable2:(NSString*)tab1  andTable2:(NSString*)tab2{
    BOOL response = FALSE;
    NSString *query = [[[@"INSERT INTO  " stringByAppendingString: tab2] stringByAppendingString:@" SELECT * FROM " ] stringByAppendingString: tab1];
    sqlite3_stmt *statement;

    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = [query UTF8String]; ; //
        sqlite3_prepare_v2(databaseD, sqlStatement, -1, &statement, NULL);
        if(sqlite3_step(statement) == SQLITE_DONE){
            NSLog(@"Insert successful(activity)");
            response = YES;
        }else{
            NSLog(@"Insert failed");
            
            //databaseDNSAssert1(0,@"Error by inserting '%s' ", sqlite3_errmsg(databaseD));
            //NSAssert1(0, @"Error while inserting data. '%s'", sqlite3_errmsg(db));
            NSLog(@"Error while creating insert statement. %s", sqlite3_errmsg(databaseD));
            response = NO;
        }
        sqlite3_finalize(statement);
        sqlite3_close(databaseD);
    }
    printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
    sqlite3_close(databaseD);
    
    
    
    return response;
}
-(BOOL)deleteFromTable:(NSString *)table{
    BOOL response = FALSE;
    NSString *query = [@"DELETE FROM " stringByAppendingString:table];
    sqlite3_stmt *statement;
    
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = [query UTF8String]; ; //
        sqlite3_prepare_v2(databaseD, sqlStatement, -1, &statement, NULL);
        if(sqlite3_step(statement) == SQLITE_DONE){
            NSLog(@"Insert successful(activity)");
            response = YES;
        }else{
            NSLog(@"Insert failed");
            
            //databaseDNSAssert1(0,@"Error by inserting '%s' ", sqlite3_errmsg(databaseD));
            //NSAssert1(0, @"Error while inserting data. '%s'", sqlite3_errmsg(db));
            NSLog(@"Error while creating insert statement. %s", sqlite3_errmsg(databaseD));
            response = NO;
        }
        sqlite3_finalize(statement);
        sqlite3_close(databaseD);
    }
    printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
    sqlite3_close(databaseD);
    
    
    
    return response;
}

-(BOOL) copyTable1AndCreateTable2:(NSString*)tab1  andTable2:(NSString*)tab2{
    BOOL response = FALSE;
    NSString *query = [[[[@"CREATE TABLE " stringByAppendingString: tab2] stringByAppendingString:@" AS SELECT * FROM " ] stringByAppendingString: tab1] stringByAppendingString:@""];
    sqlite3_stmt *statement;
    
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = [query UTF8String]; ; //
        sqlite3_prepare_v2(databaseD, sqlStatement, -1, &statement, NULL);
        if(sqlite3_step(statement) == SQLITE_DONE){
            NSLog(@"Insert successful(activity)");
            response = YES;
        }else{
            NSLog(@"Insert failed");
            
            //databaseDNSAssert1(0,@"Error by inserting '%s' ", sqlite3_errmsg(databaseD));
            //NSAssert1(0, @"Error while inserting data. '%s'", sqlite3_errmsg(db));
            NSLog(@"Error while creating insert statement. %s", sqlite3_errmsg(databaseD));
            response = NO;
        }
        sqlite3_finalize(statement);
        sqlite3_close(databaseD);
    }
    printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
    sqlite3_close(databaseD);
    
    
    
    return response;
}

-(void)readArchivos:(NSString* ) readQuery  {
 
    arrayArchivos = [[NSMutableArray alloc] init];
    
    
    if(sqlite3_open([databasePathD UTF8String], &databaseD) == SQLITE_OK){
        //SETUP the SQL statement and compile it for faster access
        //const char *sqlStatement = "select * from record order";
        const char *sqlStatement = [readQuery UTF8String]; ; //
        sqlite3_stmt *compiledStatement;
        if(sqlite3_prepare_v2(databaseD, sqlStatement, -1, &compiledStatement, NULL) == SQLITE_OK){
            //Loop through the results and add them to the feeds array
            while (sqlite3_step(compiledStatement)==SQLITE_ROW) {
                //Read the data from the result row
                int  aCa =sqlite3_column_int(compiledStatement, 0);
                
                NSString *aDesc =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 1)];
                NSString *aDesc2 =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 2)];
 //               int  aEst =sqlite3_column_int(compiledStatement, 3);
  //              NSString *aAn =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 4)];
    //            NSString *aSel =[NSString stringWithUTF8String:(char *) sqlite3_column_text(compiledStatement, 5)];
                
                ArchivoDesc *arc= [[ArchivoDesc alloc] initWithArchivo:aDesc andDescripcion:aDesc2 andSelect_table:@"pres_map_columna" andAnio:@"" andEstatus:2];
                arc.id_reg_archivo = aCa;
                
                [arrayArchivos  addObject:arc];
                
                
                
            }
            sqlite3_finalize(compiledStatement);
            
        }
    }
    printf("could not prepare :% s\n", sqlite3_errmsg(databaseD));
    sqlite3_close(databaseD);
    
}



-(BOOL) addActivity:(NSString *) table andId:(int)idToUpdate andUser:(int)user andLevel:(NSString *) levelAct andType:(NSString *) typeAct andQuestion:(int)ques andGoodAnswer:(int)goodA andSesion:(int)ses{
    
    BOOL respuesta;
    //databaseNameD = @"Records.sql";
    
    //Get the path to the documents directory and append the database Name
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [documentPaths objectAtIndex:0];
    //databasePathD = [documentsDir stringByAppendingPathComponent:databaseNameD];
    sqlite3_stmt *statement;
    sqlite3 *db;
    
    const char *dbpath = [databasePathD UTF8String];
    
    if(sqlite3_open(dbpath, &db) == SQLITE_OK){
        NSString *insertSQL = [NSString stringWithFormat:@"Insert into activities(id_activity, id_user, level , type, questionNumber, goodAnswer, sesion ) values(\"%d\", \"%d\", \"%@\",\"%@\",\"%d\",\"%d\",\"%d\")",idToUpdate, user, levelAct, typeAct, ques, goodA, ses];
        //NSString *insertSQL = [NSString stringWithFormat:@"Insert into activities(id_activity, id_user, level , type ) values(\"%d\", \"%d\", \"%@\",\"%@\")",idToUpdate, user, levelAct, typeAct];
        
        const char *insert_stmt = [insertSQL UTF8String];
        sqlite3_prepare_v2(db, insert_stmt, -1, &statement, NULL);
        if(sqlite3_step(statement) == SQLITE_DONE){
            NSLog(@"Insert successful(activity)");
            respuesta = YES;
        }else{
            NSLog(@"Insert failed");
            
            //databaseDNSAssert1(0,@"Error by inserting '%s' ", sqlite3_errmsg(databaseD));
            //NSAssert1(0, @"Error while inserting data. '%s'", sqlite3_errmsg(db));
            NSLog(@"Error while creating insert statement. %s", sqlite3_errmsg(databaseD));
            respuesta = NO;
        }
        sqlite3_finalize(statement);
        sqlite3_close(db);
    }
    
    return respuesta;
    
}



-(BOOL)addElement:(NSString*) insertForSql{
    
    BOOL respuesta;
    //databaseNameD = @"Records.sql";
    
    //Get the path to the documents directory and append the database Name
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [documentPaths objectAtIndex:0];
    //databasePathD = [documentsDir stringByAppendingPathComponent:databaseNameD];
    sqlite3_stmt *statement;
    sqlite3 *db;
    
    const char *dbpath = [databasePathD UTF8String];
    
    if(sqlite3_open(dbpath, &db) == SQLITE_OK){
        NSString *insertSQL = insertForSql;
        
        const char *insert_stmt = [insertSQL UTF8String];
        sqlite3_prepare_v2(db, insert_stmt, -1, &statement, NULL);
        if(sqlite3_step(statement) == SQLITE_DONE){
            NSLog(@"Insert successful()");
            respuesta = YES;
        }else{
            NSLog(@"Insert failed");
            NSLog(@"Error while creating insert statement. %s", sqlite3_errmsg(databaseD));
            //NSLog(@"Error while creating insert statement. %s", sqlite3_errmsg(databaseD));
            respuesta = NO;
        }
        sqlite3_finalize(statement);
        sqlite3_close(db);
    }
    
    return respuesta;
  
    
    
    
    
    
    
}





@end

