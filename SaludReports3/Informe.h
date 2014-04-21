//
//  Informe.h
//  SaludReports3
//
//  Created by Felipe on 24/07/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Informe : NSObject{
    int id_in;
    NSString *descripcion;
    NSString *nombrePdf;
    
}

@property (nonatomic) int id_in;
@property (retain) NSString *descripcion;
@property (retain) NSString *nombrePdf;

-(id)initWithId:(int)idn  andDescripcion:(NSString*)des andNombrePdf:(NSString*)nombP;



@end
