//
//  labelForDescripcion.m
//  SaludReports3
//
//  Created by Clausulita on 19/07/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "labelForDescripcion.h"

@implementation labelForDescripcion

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    
    self.numberOfLines = 4;
    [self setTextAlignment:NSTextAlignmentLeft];
    [self setFont:[UIFont systemFontOfSize:10]];

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
