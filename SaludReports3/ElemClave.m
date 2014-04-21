//
//  ElemClave.m
//  SaludReports3
//
//  Created by Clausulita on 18/02/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "ElemClave.h"

@implementation ElemClave

@synthesize clave, descripcion;


-(id) initWithClave:(NSString *)cl andDescripcion:(NSString *)d{
    clave = cl;
    descripcion = d;
    
    
    return self;
}


@end
