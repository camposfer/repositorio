//
//  AppDelegate.h
//  SaludReports3
//
//  Created by Clausulita on 15/01/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DatabaseConnection.h"
#import "Ruta.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    DatabaseConnection *databaseConnection;
    NSString *currentLink;
    float version;
    NSMutableArray *arrayForGraph;
    NSString *valChart;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) DatabaseConnection *databaseConnection;
@property (strong, nonatomic) NSString *currentLink;
@property (nonatomic) float version;
@property (retain) NSMutableArray *arrayForGraph;
@property (strong, nonatomic) NSString *valChart;


-(void)updateCurrentLink;


@end
