//
//  ClaveP.h
//  SaludReports3
//
//  Created by Clausulita on 26/04/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClaveP : NSObject{
    
    int rowid;
    int idC;
    NSString * ciclo;
    NSString *ramo;
    NSString *unidad;
    int gf;
    int funcion;
    int subfuncion;
    int programa;
    int actividad_inst;
    NSString *iden_proy;
    int proyecto;
    int partida;
    int tipo_gasto;
    int fuente_finan;
    int ent_fed;
    NSString *clave_cartera;
    double original;
    double ori_ene;
    double ori_feb;
    double ori_mar;
    double ori_abr;
    double ori_may;
    double ori_jun;
    double ori_jul;
    double ori_ago;
    double ori_sep;
    double ori_oct;
    double ori_nov;
    double ori_dic;
    double modificado;
    double mod_ene;
    double mod_feb;
    double mod_mar;
    double mod_abr;
    double mod_may;
    double mod_jun;
    double mod_jul;
    double mod_ago;
    double mod_sep;
    double mod_oct;
    double mod_nov;
    double mod_dic;
    double ejercido;
    double eje_ene;
    double eje_feb;
    double eje_mar;
    double eje_abr;
    double eje_may;
    double eje_jun;
    double eje_jul;
    double eje_ago;
    double eje_sep;
    double eje_oct;
    double eje_nov;
    double eje_dic;
    NSString *cap;
    NSString *con;
    NSString *prog;
    NSString *fecha;
    double disponible;
    double dis_ene;
    double dis_feb;
    double dis_mar;
    double dis_abr;
    double dis_may;
    double dis_jun;
    double dis_jul;
    double dis_ago;
    double dis_sep;
    double dis_oct;
    double dis_nov;
    double dis_dic;
    int gsgf;
   
    
    
    
}



@property (nonatomic) int rowid;
@property (nonatomic) int idC;
@property (retain) NSString * ciclo;
@property (retain) NSString *ramo;
@property (retain) NSString *unidad;
@property (nonatomic) int gf;
@property (nonatomic) int funcion;
@property (nonatomic) int subfuncion;
@property (nonatomic) int programa;
@property (nonatomic) int actividad_inst;
@property (retain) NSString *iden_proy;
@property (nonatomic) int proyecto;
@property (nonatomic) int partida;
@property (nonatomic) int tipo_gasto;
@property (nonatomic) int fuente_finan;
@property (nonatomic) int ent_fed;
@property (retain) NSString *clave_cartera;
@property (nonatomic) double original;
@property (nonatomic) double ori_ene;
@property (nonatomic) double ori_feb;
@property (nonatomic) double ori_mar;
@property (nonatomic) double ori_abr;
@property (nonatomic) double ori_may;
@property (nonatomic) double ori_jun;
@property (nonatomic) double ori_jul;
@property (nonatomic) double ori_ago;
@property (nonatomic) double ori_sep;
@property (nonatomic) double ori_oct;
@property (nonatomic) double ori_nov;
@property (nonatomic) double ori_dic;
@property (nonatomic) double modificado;
@property (nonatomic) double mod_ene;
@property (nonatomic) double mod_feb;
@property (nonatomic) double mod_mar;
@property (nonatomic) double mod_abr;
@property (nonatomic) double mod_may;
@property (nonatomic) double mod_jun;
@property (nonatomic) double mod_jul;
@property (nonatomic) double mod_ago;
@property (nonatomic) double mod_sep;
@property (nonatomic) double mod_oct;
@property (nonatomic) double mod_nov;
@property (nonatomic) double mod_dic;
@property (nonatomic) double ejercido;
@property (nonatomic) double eje_ene;
@property (nonatomic) double eje_feb;
@property (nonatomic) double eje_mar;
@property (nonatomic) double eje_abr;
@property (nonatomic) double eje_may;
@property (nonatomic) double eje_jun;
@property (nonatomic) double eje_jul;
@property (nonatomic) double eje_ago;
@property (nonatomic) double eje_sep;
@property (nonatomic) double eje_oct;
@property (nonatomic) double eje_nov;
@property (nonatomic) double eje_dic;
@property (retain) NSString *cap;
@property (retain) NSString *con;
@property (retain) NSString *prog;
@property (retain) NSString *fecha;
@property (nonatomic) double disponible;
@property (nonatomic) double dis_ene;
@property (nonatomic) double dis_feb;
@property (nonatomic) double dis_mar;
@property (nonatomic) double dis_abr;
@property (nonatomic) double dis_may;
@property (nonatomic) double dis_jun;
@property (nonatomic) double dis_jul;
@property (nonatomic) double dis_ago;
@property (nonatomic) double dis_sep;
@property (nonatomic) double dis_oct;
@property (nonatomic) double dis_nov;
@property (nonatomic) double dis_dic;
@property (nonatomic) int gsgf;



@end
