//
//  Informe.m
//  SaludReports3
//
//  Created by Felipe on 24/07/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "Informe.h"

@implementation Informe

@synthesize id_in, descripcion, nombrePdf;



-(id)initWithId:(int)idn  andDescripcion:(NSString*)des andNombrePdf:(NSString*)nombP{
    self.id_in = idn;
    self.descripcion = des;
    self.nombrePdf =nombP;
    return self;
}   



@end
