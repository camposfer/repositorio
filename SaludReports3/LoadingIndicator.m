#import "LoadingIndicator.h"
#import <QuartzCore/QuartzCore.h>

@implementation LoadingIndicator

@synthesize labelMessage, activityIndicator;

- (id)init {    
    if (self = [super initWithFrame:CGRectMake(335, 250, 370, 150)]) {
        
        // Vue
        self.backgroundColor = [UIColor grayColor];
        self.alpha = 0.70;
        self.layer.cornerRadius = 10;
        
        // Label : message
        UILabel *theLabelMessage = [[UILabel alloc] initWithFrame:CGRectMake(45, 85, 240, 20)];
        theLabelMessage.backgroundColor = [UIColor clearColor];
        theLabelMessage.textColor = [UIColor whiteColor];
        theLabelMessage.text = NSLocalizedString(@"Cargando catálogos", @"Cargando catálogos");
        theLabelMessage.textAlignment = UITextAlignmentCenter;
        theLabelMessage.font = [UIFont boldSystemFontOfSize:16];
        theLabelMessage.adjustsFontSizeToFitWidth = YES;
        
        self.labelMessage = theLabelMessage;
        [self addSubview:theLabelMessage];
        //[theLabelMessage release];
        
        // Activity Indicator
        UIActivityIndicatorView *theActivityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        theActivityIndicator.frame = CGRectMake(140, 15, 60, 60);
        
        self.activityIndicator = theActivityIndicator;
        [self addSubview:theActivityIndicator];
         [self.activityIndicator startAnimating];
        //[theActivityIndicator release];
        
    }
    return self;
}

- (void)show:(NSString *)theMessage {
    
    self.labelMessage.text = theMessage;
    [self.activityIndicator startAnimating];
    self.hidden = NO;
    [self.superview bringSubviewToFront:self];
    //[self refreshPosition];
    
}

- (void)hide {
    [self.activityIndicator stopAnimating];
    self.hidden = YES;
}

- (void)refreshPosition {
    
    self.center = self.superview.center;
}

- (void)dealloc {
    self.labelMessage = nil;
    self.activityIndicator = nil;
    
    //[super dealloc];
}

@end