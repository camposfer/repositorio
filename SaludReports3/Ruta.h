//
//  Ruta.h
//  SaludReports3
//
//  Created by Clausulita on 30/04/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ruta : NSObject{
    int idArchi;
    NSString *ruta;
    NSString *activo;
    NSString *tipo;
}

@property (nonatomic) int idArchi;
@property (retain) NSString *ruta;
@property (retain) NSString *activo;
@property (retain) NSString *tipo;

-(id)initWithId:(int)idA andRuta:(NSString*)rut andActivo:(NSString*)ac andTipo:(NSString*)tip;

@end
