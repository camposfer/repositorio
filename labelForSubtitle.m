//
//  labelForSubtitle.m
//  SaludReports3
//
//  Created by Clausulita on 22/07/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "labelForSubtitle.h"

@implementation labelForSubtitle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        [self setTextAlignment:NSTextAlignmentCenter];
        [self setFont:[UIFont boldSystemFontOfSize:14]];
        [self setTextColor:[UIColor whiteColor]];
        [self setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"blue6.jpg"]]];
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
