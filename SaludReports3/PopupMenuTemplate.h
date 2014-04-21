#import <UIKit/UIKit.h>


@protocol sendUser2 <NSObject>

@required
-(void)setUser2:(NSString *) userTyped;

@end

@interface PopupMenuTemplate : UIView <UITextFieldDelegate> {
    
    UILabel *labelMessage;
    UILabel *labelMessage2;
    UILabel *labelMessage3;
    UILabel *labelMessageTitle;
    UIButton *buttonOk;
    BOOL isUserEntered;
    BOOL withButton;
    BOOL withTextField;
    id <sendUser2> delegate;
    
    int labelNumber;
}

@property(retain) UILabel *labelMessage;
@property(retain) UILabel *labelMessage2;
@property(retain) UILabel *labelMessage3;
@property(retain) UILabel *labelMessageTitle;

@property(retain) UITextField *textResponse;

@property(retain) UIButton * buttonOk;
@property(nonatomic) BOOL isSomethingEntered;

@property (retain) id delegate;
@property (nonatomic) int labelNumber;


@property(nonatomic) BOOL withButton;
@property(nonatomic) BOOL withTextField;

- (id)initWithFrame:(CGRect)frame andIpad:(BOOL) isIpad andHowManyLabelMessage:(int) number andButton:(BOOL)viewWithButton  andTextField:(BOOL) viewWithTextField;
- (NSString *)show:(NSString *)theMessage andTitle:(NSString *)theMessageTitle ;
-(void) initButtonWithFrame :(CGRect)frame;

- (void)hide;
- (void)refreshPosition;

@end