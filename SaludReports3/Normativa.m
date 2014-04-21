//
//  Normativa.m
//  SaludReports3
//
//  Created by Felipe on 24/07/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "Normativa.h"

@implementation Normativa


@synthesize id_nor, ley, articulo, tema, subtema, subtema2, paginaPdf, detalle, nombrePdf;


-(id)initWithId:(int)idn andLey:(NSString*)le andArticulo:(NSString*)art andTema:(NSString*)tem andSubtema:(NSString*)subtem andSubtema2:(NSString*)subtem2 andPagina:(NSString*)pagina andDetalle:(NSString*)det andNombrePdf:(NSString*)nombP{

    self.id_nor = idn;
    self.ley = le;
    self.articulo = art;
    self.tema = tem;
    self.subtema = subtem;
    self.subtema2 = subtem2;
    self.paginaPdf = pagina;
    self.detalle = det;
    self.nombrePdf = nombP;
    return self;
}


@end
