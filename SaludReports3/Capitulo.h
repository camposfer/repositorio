//
//  Capitulo.h
//  SaludReports3
//
//  Created by Clausulita on 21/01/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Capitulo : NSObject{
    NSString *clave;
    NSString *descripcion;
}



@property (nonatomic) NSString *clave;
@property (nonatomic) NSString *descripcion;

-(id) initWithClave:(NSString *)clave andDescripcion:(NSString*)d;


@end
