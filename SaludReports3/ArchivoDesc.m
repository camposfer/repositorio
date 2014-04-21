//
//  ArchivoDesc.m
//  SaludReports3
//
//  Created by Clausulita on 07/02/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "ArchivoDesc.h"

@implementation ArchivoDesc

@synthesize archivo;
@synthesize descripcion;
@synthesize id_reg_archivo;
@synthesize select_table, anio, estatus;

-(id) initWithArchivo:(NSString *)ar andDescripcion:(NSString*)d andSelect_table:(NSString*) sel andAnio:(NSString*)ani andEstatus:(int)est {
    self.archivo = ar;
    self.descripcion = d;
    self.select_table = sel;
    self.anio = ani;
    self.estatus = est;
    
    return self;
}

@end
