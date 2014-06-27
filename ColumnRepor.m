//
//  ColumnRepor.m
//  NUMB3Reader
//
//  Created by Felipe on 26/05/14.
//  Copyright (c) 2014 Felipe Morales Torres. All rights reserved.
//

#import "ColumnRepor.h"

@implementation ColumnRepor
@synthesize idColumnRepor, collectionView, nameTitle,textAlignment, type, movable, array, buttonTitle;

-(id)initWithId:(int) idCo andCollectionView:(UICollectionView*) colle andNameTitle:(NSString*) nameT andTextAlignment:(UITextAlignment*)textA andType:(NSString*)typ andMovable:(NSString*)mov andArray:(NSMutableArray*) arr {
    idColumnRepor = idCo;
    collectionView = colle;
    nameTitle =nameT;
    type =typ;
    collectionView.tag = 3;  //easiest movables
    buttonTitle.tag = 3;
    //1 text CenterAlignment
    // 2 numeric RightAlignment
    if ([type isEqualToString: @"1"]){
        textAlignment = NSTextAlignmentCenter;
    }else if ([type isEqualToString:@"2"]){
        textAlignment = NSTextAlignmentRight;
    }
    buttonTitle = [[buttonWithStyle alloc] initWithFrame:CGRectMake(collectionView.frame.origin.x+2, collectionView.frame.origin.y-20, collectionView.frame.size.width-5, 20)];
    [buttonTitle setTitle:nameTitle forState:UIControlStateNormal];
    
    movable = mov;
    if ([movable isEqualToString:@"YES"]){
        collectionView.userInteractionEnabled = YES;
    }
    array = [[NSMutableArray alloc] initWithArray:array copyItems:YES];
    return self;
}

//Handle touchesMoved
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    if([touch view]==collectionView)
    {
        CGPoint location = [touch locationInView:self.collectionView];
        collectionView.center=location;
    }
}



@end
