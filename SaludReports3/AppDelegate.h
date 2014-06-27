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

//alltrim string
#define allTrim( object ) [object stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet] ]

 //tint Colors definition
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define UIColorBlueFromRGB 0x006699
//#define UIColorBlueFromRGB 0xC2BB54  //yellow
//#define UIColorBlueFromRGB 0xC2BB54  //gray

//#define UIColorGrayFromRGB 0xF2EFE4
#define UIColorGrayFromRGB 0xFFFFFF

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
