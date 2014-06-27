//
//  MyCollectionViewCell.m
//  SaludReports3
//
//  Created by Clausulita on 08/02/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell
@synthesize labelCell;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    self.labelCell.textColor = [UIColor blackColor];
    labelCell = [[UILabel alloc]initWithFrame:CGRectMake(0, -10, frame.size.width, frame.size.height-4)];
    labelCell.numberOfLines = 5;
    labelCell.lineBreakMode =  NSLineBreakByWordWrapping; //
    labelCell.userInteractionEnabled = YES;
    self.userInteractionEnabled = YES;
    UIImage *imageBackground = [UIImage imageNamed:@"gray2.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:imageBackground];
    [imageView setFrame:CGRectMake(0, 45, self.frame.size.width, 2.5)];
    [self addSubview:imageView];
    //backgroundColor = [UIColor colorWithPatternImage:imageBackground];
   
    [self addSubview:labelCell];
    labelCell.font = [UIFont systemFontOfSize:11];
  //  labelCell.clipsToBounds = YES;
//    labelCell.backgroundColor = [UIColor clearColor];
    labelCell.textColor = [UIColor darkGrayColor];
    labelCell.textAlignment = NSTextAlignmentCenter;
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
