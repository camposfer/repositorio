//
//  InformesViewController.m
//  SaludReports3
//
//  Created by Clausulita on 15/04/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "InformesViewController.h"

@interface InformesViewController ()

@end

@implementation InformesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //to make a background image
    UIImage *imageBackground = [UIImage imageNamed:@"wall_white2.jpg"];
   // UIImageView *imageView = [[UIImageView alloc] initWithFrame: [self.view bounds]];
     UIImageView *imageView = [[UIImageView alloc] initWithFrame: CGRectMake(0, 0, 1024, 720)];
    imageView.image = imageBackground;
    [self.view addSubview:imageView];
    
    //imageBackground
    //self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"wall_white2.jpg"]];
    //[self.view setBackgroundColor: [UIColor colorWithPatternImage: imageBackground]] ;
    
    //[[[self view] setBackgroundColor: [UIColor colorWithPatternImage: imageBackground]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
