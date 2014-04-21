//
//  FirstViewController.m
//  SaludReports3
//
//  Created by Clausulita on 15/01/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize imageSelector;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startAnimation];
	// Do any additional setup after loading the view, typically from a nib.
}

     
     -(void)startAnimation{
         [UIView   animateWithDuration:3.0 delay:0.0 options:UIViewAnimationCurveEaseOut animations: ^
          
          {
              
          [imageSelector setCenter:CGPointMake(282, 657)];
          }completion:^ (BOOL finished)
          {
              if ((finished)) {
                  [self moveRight];
                  
              }
          }];
         
     }


-(void)moveRight{
    [UIView   animateWithDuration:3.0 delay:0.0 options:UIViewAnimationCurveEaseOut animations: ^
     
     {
         
    [imageSelector setCenter:CGPointMake(742, 657)];
    }completion:^ (BOOL finished)
     {
         if ((finished)) {
             
             
             [self startAnimation];
         }
     }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
