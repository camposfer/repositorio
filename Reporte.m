//
//  Reporte.m
//  SaludReports3
//
//  Created by Clausulita on 01/07/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "Reporte.h"

@implementation Reporte

@synthesize idRepor, numFilas, filaFin, filaIni, filtro, descripcion, query, fecha, fechaTotal;

-(id)initWithId:(int)idR andNumFilas:(int)numf andFilaIni:(int)Filai andFilaFin:(int)filaF andFiltro:(NSString*)fil andDescripcion:(NSString*)des andQuery:(NSString*)quer andFecha:(NSString*) fec andFechaTotal:(NSString *)fecTot{
    
    self.idRepor = idR;
    self.numFilas = numf;
    self.filaIni = Filai;
    self.filaFin = filaF;
    self.filtro = fil;
    self.descripcion = des;
    self.query = quer;
    self.fecha = fec;
    self.fechaTotal = fecTot;
    return self;
}




@end
