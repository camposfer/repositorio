//
//  claveDesc.m
//  Agespre
//
//  Created by Felipe on 04/12/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "claveDesc.h"

@implementation claveDesc

@synthesize clave, descripcion, anio;

-(id) initWithClave:(NSString *)cl andDescripcion:(NSString*)d andAnio:(NSString*)an{
    self.clave =cl;
    self.descripcion = d;
    self.anio = an;
    return self;
}


@end
