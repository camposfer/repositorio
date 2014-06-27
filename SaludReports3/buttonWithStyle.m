//
//  buttonWithStyle.m
//  SaludReports3
//
//  Created by Clausulita on 06/02/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "buttonWithStyle.h"

@implementation buttonWithStyle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //self = [[UIButton alloc] initWithFrame:CGRectMake(202, 440, 170, 50)];
//        self.backgroundColor = [[UIColor alloc ] initWithPatternImage:[UIImage imageNamed:@"blue6.jpg" ] ];
       // self.backgroundColor = [[UIColor alloc ] initWithPatternImage:[UIImage imageNamed:@"background.jpg" ] ];
        [self setBackgroundColor:UIColorFromRGB(UIColorBlueFromRGB)];
         //self.backgroundColor = [[UIColor alloc ] initWithPatternImage:[UIImage imageNamed:@"button_red.png" ] ];

        [self setTitle:@"Ok"  forState:UIControlStateNormal];
        self.titleLabel.textColor = UIColorFromRGB(UIColorGrayFromRGB);
        self.titleLabel.font = [UIFont boldSystemFontOfSize:14];
        
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
