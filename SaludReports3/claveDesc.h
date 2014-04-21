//
//  claveDesc.h
//  Agespre
//
//  Created by Felipe on 04/12/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface claveDesc : NSObject{
    NSString *clave;
    NSString *descripcion;
    NSString *anio;
    
}

@property (retain) NSString *clave;
@property (retain) NSString *descripcion;
@property (retain) NSString *anio;

-(id) initWithClave:(NSString *)cl andDescripcion:(NSString*)d andAnio:(NSString*)an;

@end
