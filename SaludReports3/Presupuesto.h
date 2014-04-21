//
//  Presupuesto.h
//  SaludReports3
//
//  Created by Clausulita on 11/02/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Presupuesto : NSObject{
    NSString *clave;
    NSString *descripcion;
    double original;
    double modificado;
    double disponible;
    double dispo60;
    double modp;
    double ejercido;
    double disponiblep;
    
}

@property (retain) NSString *clave;
@property (retain) NSString *descripcion;
@property (nonatomic) double original;
@property (nonatomic) double modificado;
@property (nonatomic) double disponible;
@property (nonatomic) double dispo60;
@property (nonatomic) double modp;
@property (nonatomic) double ejercido;
@property (nonatomic) double disponiblep;

-(id) initWithClave:(NSString *)cl andDescripcion:(NSString *)de andOriginal:(double)or andModificado:(double)mod andDisponible:(double)di andDispo60:(double)di60  andModp:(double)mp andEjercido:(double)ej andDisponiblep:(double)dp;


@end
