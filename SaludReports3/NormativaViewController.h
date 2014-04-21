//
//  NormativaViewController.h
//  SaludReports3
//
//  Created by Clausulita on 20/03/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Normativa.h"
#import "LoadingIndicator.h"  //el indicador de espera en carga
#import "AppDelegate.h"

@interface NormativaViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    LoadingIndicator * loadingIndicator;

    
}



@property (retain) IBOutlet UIWebView *webView;
@property (retain) IBOutlet UITableView *tableView;

@property (retain) IBOutlet UISegmentedControl *segmentedControl;

@property (retain) IBOutlet UIButton *buttonDownload;

@property (retain) IBOutlet UIButton *buttonDelete;

@property (retain) NSMutableArray *arrayNormativa;


-(IBAction)downloadRepor:(UIButton*)sender;
-(IBAction)deleteRepor:(UIButton*)sender;

-(IBAction)changeSelector:(UISegmentedControl*)sender;

@property(retain) LoadingIndicator *loadingIndicator;

@property(retain) AppDelegate * mainDelegate;

@end