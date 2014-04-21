//
//  Reporte.h
//  SaludReports3
//
//  Created by Clausulita on 01/07/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Reporte : NSObject{
    int idRepor;
    int numFilas;
    int filaIni;
    int filaFin;
    NSString  *filtro;
    NSString *descripcion;
    NSString *query;
    NSString *fecha;
    NSString *fechaTotal;
    
}

@property (nonatomic) int idRepor;
@property (nonatomic) int numFilas;
@property (nonatomic) int filaIni;
@property (nonatomic) int filaFin;
@property (retain) NSString  *filtro;
@property (retain) NSString *descripcion;
@property (retain) NSString *query;
@property (retain) NSString *fecha;
@property (retain) NSString *fechaTotal;


-(id)initWithId:(int)idR andNumFilas:(int)numf andFilaIni:(int)Filai andFilaFin:(int)filaF andFiltro:(NSString*)fil andDescripcion:(NSString*)des andQuery:(NSString*)quer andFecha:(NSString*) fec andFechaTotal:(NSString *)fecTot;


@end
