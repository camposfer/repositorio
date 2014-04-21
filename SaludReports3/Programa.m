//
//  Programa.m
//  SaludReports3
//
//  Created by Clausulita on 21/01/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "Programa.h"

@implementation Programa

@synthesize clave, descripcion;


-(id) initWithClave:(NSString *)cl andDescripcion:(NSString *)d{
    clave = cl;
    descripcion = d;
    
    
    return self;
}
@end
