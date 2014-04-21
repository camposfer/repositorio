//
//  Ruta.m
//  SaludReports3
//
//  Created by Clausulita on 30/04/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "Ruta.h"

@implementation Ruta

@synthesize idArchi, ruta, tipo, activo;


-(id)initWithId:(int)idA andRuta:(NSString*)rut andActivo:(NSString*)ac andTipo:(NSString*)tip{
    
    idArchi =idA;
    ruta = rut;
    activo = ac;
    tipo = tip;
    return self;
}




@end
