//
//  AppDelegate.m
//  SaludReports3
//
//  Created by Clausulita on 15/01/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize arrayForGraph;
@synthesize valChart;


@synthesize databaseConnection, currentLink, version;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    databaseConnection = [[DatabaseConnection alloc] init];
    [databaseConnection initConnection:@"presupuesto.sql"];
    [databaseConnection checkAndCreateDatabase];
    [databaseConnection readFromDatabase];
    version = [[UIDevice currentDevice].systemVersion floatValue];
    //version = 7.0;
    [self updateCurrentLink];
    
    
    
    return YES;
}

-(void)updateCurrentLink{
    for (Ruta *rut1  in databaseConnection.arrayRutas) {
        if ([rut1.activo isEqualToString:@"YES"]){
            currentLink = rut1.ruta;
        }
    }
    
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
