//
//  configViewController.h
//  SaludReports3
//
//  Created by Clausulita on 30/04/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "DatabaseConnection.h"
#import "Ruta.h"
#import "claveDesc.h"
#import "LoadingIndicator.h"

@interface configViewController : UIViewController  <UITableViewDataSource, UITableViewDelegate >{
    
    UITableView *tableRutas;
    UITableView *tableRutasArchivo;
    UITableView *tableRutasArchivo2;
    
    UILabel *labelRutas;
    UILabel *labelRutasArchivo;
    UILabel *labelRutasArchivo2;
    UILabel *labelCatalogos;
    
    UITextField *textFieldRutas;
    UITextField *textFieldRutasArchivo;
    UITextField *textFieldRutasArchivo2;
    
    AppDelegate *mainDelegate;
    DatabaseConnection *preDatabase;
    int lastIdArchi;
    LoadingIndicator *loadingIndicator;
    
    
    
}

@property (nonatomic) LoadingIndicator *loadingIndicator;
@property (retain, nonatomic) IBOutlet UITableView *tableRutas;
@property (retain, nonatomic) IBOutlet UITableView *tableRutasArchivo;
@property (retain, nonatomic) IBOutlet UITableView *tableRutasArchivo2;

@property (retain, nonatomic) IBOutlet UILabel *labelRutas;
@property (retain, nonatomic) IBOutlet UILabel *labelRutasArchivo;
@property (retain, nonatomic) IBOutlet UILabel *labelRutasArchivo2;
@property (retain, nonatomic) IBOutlet UILabel *labelCatalogos;

@property (retain, nonatomic) IBOutlet UITextField *textFieldRutas;
@property (retain, nonatomic) IBOutlet UITextField *textFieldRutasArchivo;
@property (retain, nonatomic) IBOutlet UITextField *textFieldRutasArchivo2;

@property (retain, nonatomic) AppDelegate *mainDelegate;
@property (retain, nonatomic) DatabaseConnection *preDatabase;

@property (nonatomic) int lastIdArchi;

-(IBAction)setCatalogos :(UIButton*)sender;
-(IBAction)setRuta :(UIButton*)sender;
-(IBAction)setRutaArchivos :(UIButton*)sender;
-(IBAction)setRutaArchivos2 :(UIButton*)sender;


@end
