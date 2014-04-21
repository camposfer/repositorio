//
//  Normativa.h
//  SaludReports3
//
//  Created by Felipe on 24/07/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Normativa : NSObject{
    int id_nor;
    NSString *ley;
    NSString *articulo;
    NSString *tema;
    NSString *subtema;
    NSString *subtema2;
    NSString *paginaPdf;
    NSString *detalle;
    NSString *nombrePdf;
    
}

@property (nonatomic) int id_nor;
@property (retain) NSString *ley;
@property (retain) NSString *articulo;
@property (retain) NSString *tema;
@property (retain) NSString *subtema;
@property (retain) NSString *subtema2;
@property (retain) NSString *paginaPdf;
@property (retain) NSString *detalle;
@property (retain) NSString *nombrePdf;

-(id)initWithId:(int)idn andLey:(NSString*)le andArticulo:(NSString*)art andTema:(NSString*)tem andSubtema:(NSString*)subtem andSubtema2:(NSString*)subtem2 andPagina:(NSString*)pagina andDetalle:(NSString*)det andNombrePdf:(NSString*)nombP;


@end
