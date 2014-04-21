//
//  DatabaseConexion.h
//  SaludReports
//
//  Created by Clausulita on 28/08/12.
//  Copyright (c) 2012 HJM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "Ruta.h"
#import "ClaveP.h"
#import "Presupuesto.h"
#import "ArchivoDesc.h"
#import "ElemClave.h"
#import "Predefinido.h"
#import "Normativa.h"
#import "Informe.h"

@interface DatabaseConnection : NSObject{
    
    NSString *databaseNameD;
    NSString *databasePathD;
    sqlite3 *databaseD;
    
    //Array to store the report objects saved in the device
    
    NSMutableArray * arrayRutas;
    NSMutableArray * arrayPresupuesto;
    
    NSMutableArray * arrayPeriodos;
    
    
}

@property (nonatomic, retain) NSMutableArray * arrayRutas;
@property (nonatomic, retain) NSMutableArray * arrayPresupuesto;
@property (nonatomic, retain) NSMutableArray * arrayArchivos;
@property (nonatomic, retain) NSMutableArray * arrayNormativas;
@property (nonatomic, retain) NSMutableArray * arrayInformes;


@property (nonatomic, retain) NSString *databaseNameD;
@property (nonatomic, retain) NSString *databasePathD;
@property (nonatomic) sqlite3 *databaseD;


@property (nonatomic, retain) IBOutlet NSMutableArray *arrayUnid;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayCapitulo;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayConcepto;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayPrograma;


/*@property (nonatomic, retain) IBOutlet NSMutableArray *arrayGfun;
 @property (nonatomic, retain) IBOutlet NSMutableArray *arrayFonc;
 @property (nonatomic, retain) IBOutlet NSMutableArray *arraySfun;*/
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayProg;

@property (nonatomic, retain) IBOutlet NSMutableArray *arrayActi;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayDide;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayDver;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayCcp;

@property (nonatomic, retain) IBOutlet NSMutableArray *arrayProyInv;
@property (nonatomic, retain) IBOutlet NSMutableArray *arrayEntidad;

@property (nonatomic, retain) IBOutlet NSMutableArray *arrayPred;

@property (nonatomic, retain) IBOutlet NSMutableArray *arrayPeriodos;

-(void) initConnection:(NSString *)databaseName ;

-(void) checkAndCreateDatabase;
-(void) readFromDatabase;
-(void) readFromPpto:(NSString*) queryP;
-(void) readFromPptoTotal:(NSString*) queryP;
-(void) readFromCatalogo:(NSString*) queryP andTipo:(NSString *) tipo;

//-(BOOL) addRegister:(NSString *) n andType: (NSString *) t andTime:(NSString *) d;
-(BOOL) deleteRegisterbyId:(int)idToDelete;
-(BOOL) deleteRegisterbyId:(int)idToDelete andTable:(NSString *)tabl;

-(void) cleanDatabase;

-(BOOL) updateRegister:(NSString *) table andId:(int)idToUpdate andField:(NSString *)field andNewData:(NSString *) newData;
-(BOOL) addUser:(NSString *) table andId:(int)idToUpdate andName:(NSString *)field andLevel:(NSString *) newData;
//-(BOOL) addActivity:(NSString *) table andId:(int)idToUpdate andUser:(int)user andLevel:(NSString *) lev andType:(NSString *) typ andQuestion:(int)ques andGoodAnswer:(int)goodA;
-(BOOL) addActivity:(NSString *) table andId:(int)idToUpdate andUser:(int)user andLevel:(NSString *) levelAct andType:(NSString *) typeAct andQuestion:(int)ques andGoodAnswer:(int)goodA andSesion:(int)ses;

-(BOOL) updateRegister:(NSString *) table  andField:(NSString *)field andNewData:(NSString *) newData andWhereField:(NSString*)whereF andDataWhere:(NSString*)dataWhere;


-(BOOL)addElement:(NSString*) insertForSql;
-(NSString *) addNewDate:(NSMutableArray *) arrayData andNameDate:(NSString*)nameDate  andDateDescrip:(NSString*) nameDateDescrip  andAnio:(NSString*)An andEstatus:(int)est;
-(int) countDatabaseRegister:(NSString*)query;
-(void)readArchivos:(NSString* ) readQuery  ;

-(void) readPeriodos:(NSString*)queryP;

-(BOOL) copyTable1ToTable2:(NSString*)tab1  andTable2:(NSString*)tab2;
-(BOOL) copyTable1AndCreateTable2:(NSString*)tab1  andTable2:(NSString*)tab2;
-(BOOL) deleteFromTable:(NSString*)table;


@end