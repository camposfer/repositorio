//
//  collectionViewMovable.m
//  NUMB3Reader
//
//  Created by Felipe on 29/05/14.
//  Copyright (c) 2014 Felipe Morales Torres. All rights reserved.
//

#import "collectionViewMovable.h"

@implementation collectionViewMovable

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    self.userInteractionEnabled = YES;
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];  //let the tableview handle cell selection
    [self.nextResponder touchesBegan:touches withEvent:event]; // give the controller a chance for handling touch events
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
