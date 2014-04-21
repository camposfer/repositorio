//
//  Presupuesto.m
//  SaludReports3
//
//  Created by Clausulita on 11/02/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "Presupuesto.h"

@implementation Presupuesto
@synthesize clave, descripcion, original, modificado, disponible, dispo60, modp, ejercido, disponiblep;

-(id) initWithClave:(NSString *)cl andDescripcion:(NSString *)de andOriginal:(double)or andModificado:(double)mod andDisponible:(double)di andDispo60:(double)di60  andModp:(double)mp andEjercido:(double)ej andDisponiblep:(double)dp{
    clave = cl;
    descripcion = de;
    original = or;
    modificado = mod;
    disponible = di;
    dispo60 = di60;
    modp = mp;
    ejercido = ej;
    disponiblep = dp;
    
    
    return self;
}


@end