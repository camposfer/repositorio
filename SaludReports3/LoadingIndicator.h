#import <UIKit/UIKit.h>


@interface LoadingIndicator : UIView {
    
    UIActivityIndicatorView *activityIndicator;
    UILabel *labelMessage;
    
}

@property(retain) UIActivityIndicatorView *activityIndicator;
@property(retain) UILabel *labelMessage;

- (id)init;
- (void)show:(NSString *)theMessage;
- (void)hide;
- (void)refreshPosition;

@end