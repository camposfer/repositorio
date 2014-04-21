//
//  labelForImport.m
//  SaludReports3
//
//  Created by Clausulita on 19/07/13.
//  Copyright (c) 2013 Felipe Morales Torres. All rights reserved.
//

#import "labelForImport.h"

@implementation labelForImport

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    [self setFont:[UIFont systemFontOfSize:10]];
    [self setTextAlignment:NSTextAlignmentRight];

    return self;

}

-(void)setTextWithDouble:(double )import{
    NSNumber *num1 = [NSNumber numberWithDouble:import];
    NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterCurrencyStyle];
    [self setText:numberStr];
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
