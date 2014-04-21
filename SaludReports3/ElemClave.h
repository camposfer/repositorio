//
//  ElemClave.h
//  SaludReports3
//
//  Created by Clausulita on 18/02/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ElemClave : NSObject{
    NSString *clave;
    NSString *descripcion;
}



@property (nonatomic) NSString *clave;
@property (nonatomic) NSString *descripcion;

-(id) initWithClave:(NSString *)cl andDescripcion:(NSString*)d;
@end



