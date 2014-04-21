//
//  ArchivoDesc.h
//  SaludReports3
//
//  Created by Clausulita on 07/02/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArchivoDesc : NSObject{
    int id_reg_archivo;
    NSString *archivo;
    NSString *descripcion;
    NSString *select_table;
    NSString *anio;
    int estatus;
    
    
}

@property (nonatomic) int id_reg_archivo;
@property (retain) NSString *archivo;
@property (retain) NSString *descripcion;
@property (retain) NSString *select_table;
@property (retain) NSString *anio;
@property (nonatomic) int estatus;

-(id) initWithArchivo:(NSString *)ar andDescripcion:(NSString*)d andSelect_table:(NSString*) sel andAnio:(NSString*)ani andEstatus:(int)est ;

@end
