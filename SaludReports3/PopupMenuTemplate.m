#import "PopupMenuTemplate.h"
#import <QuartzCore/QuartzCore.h>

@implementation PopupMenuTemplate

@synthesize labelMessage;
@synthesize labelMessage2;
@synthesize labelMessage3;
@synthesize labelMessageTitle;
@synthesize textResponse;
@synthesize buttonOk;
@synthesize isSomethingEntered;
@synthesize delegate;
@synthesize labelNumber;
@synthesize withButton;
@synthesize withTextField;

- (id)initWithFrame:(CGRect)frame andIpad:(BOOL)isIpad andHowManyLabelMessage:(int)number andButton:(BOOL)viewWithButton andTextField:(BOOL) viewWithTextField{
    if (self = [super initWithFrame:frame]) {
        
        labelNumber = number;  //number of messages!!
        withButton = viewWithButton;
        withTextField = viewWithTextField;
        //UIImage * imagePattern = [UIImage imageNamed: @"red_wall1.jpg" ];
        self.backgroundColor = [UIColor blackColor];  // [[UIColor alloc] initWithPatternImage: imagePattern];
        self.alpha = 0.65;
        self.layer.cornerRadius = 10;
        
        // Label : message
        
        UILabel *theLabelMessage3 = [[UILabel alloc] initWithFrame:CGRectMake(15, 5, 240, 20)];
        theLabelMessage3.backgroundColor = [UIColor clearColor];
        theLabelMessage3.textColor = [UIColor whiteColor];
        theLabelMessage3.text = @"";
        theLabelMessage3.textAlignment = UITextAlignmentCenter;
        theLabelMessage3.font = [UIFont boldSystemFontOfSize:14];
        theLabelMessage3.numberOfLines = 2;
        //theLabelMessage2.adjustsFontSizeToFitWidth = YES;
        
        self.labelMessage3 = theLabelMessage3;
        [self addSubview:theLabelMessage3];
        
        
        UILabel *theLabelMessage2 = [[UILabel alloc] initWithFrame:CGRectMake(15, 25, 240, 40)];
        theLabelMessage2.backgroundColor = [UIColor clearColor];
        theLabelMessage2.textColor = [UIColor whiteColor];
        theLabelMessage2.text = NSLocalizedString(@"", @"");
        theLabelMessage2.textAlignment = UITextAlignmentCenter;
        theLabelMessage2.font = [UIFont boldSystemFontOfSize:14];
        theLabelMessage2.numberOfLines = 2;
        //theLabelMessage2.adjustsFontSizeToFitWidth = YES;
        
        self.labelMessage2 = theLabelMessage2;
        [self addSubview:labelMessage2];
        
        
        UILabel *theLabelMessageTitle = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, 140, 40)];
        theLabelMessageTitle.backgroundColor = [UIColor clearColor];
        theLabelMessageTitle.textColor = [UIColor whiteColor];
        theLabelMessageTitle.text = NSLocalizedString(@"", @"");
        theLabelMessageTitle.textAlignment = UITextAlignmentCenter;
        theLabelMessageTitle.font = [UIFont boldSystemFontOfSize:14];
        theLabelMessageTitle.numberOfLines = 2;
        self.labelMessageTitle = theLabelMessageTitle;
        
        [self addSubview:labelMessageTitle];
        
        UILabel *theLabelMessage = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 60, 60)];
        theLabelMessage.backgroundColor = [UIColor clearColor];
        theLabelMessage.textColor = [UIColor whiteColor];
        //theLabelMessage.text = NSLocalizedString(@"Cargando", @"Cargando");
        theLabelMessage.textAlignment = UITextAlignmentCenter;
        theLabelMessage.font = [UIFont boldSystemFontOfSize:14];
        theLabelMessage.adjustsFontSizeToFitWidth = YES;
        [theLabelMessage setShadowColor:[UIColor blackColor]];
        theLabelMessage.numberOfLines = 3;
        
        self.labelMessage = theLabelMessage;
        self.labelMessage.font = [UIFont boldSystemFontOfSize:10];
        [self addSubview:labelMessage];
        
        
        if (isIpad) {
            [self.labelMessage3 setFrame:CGRectMake(50, 50, 300, 50  )];
            self.labelMessage3.font = [UIFont boldSystemFontOfSize:16];
            
            [self.labelMessageTitle setFrame:CGRectMake(130, 250, 80, 100  )];
            self.labelMessageTitle.font = [UIFont boldSystemFontOfSize:16];
            self.labelMessageTitle.numberOfLines = 2;
            
            [self.textResponse setFrame:CGRectMake(100, 200, 200, 40  )];
            self.textResponse.font = [UIFont boldSystemFontOfSize:26];
            
            [self.labelMessage setFrame:CGRectMake(70, 220, 30, 50  )];
            self.labelMessage.font = [UIFont boldSystemFontOfSize:11];
            self.labelMessage.numberOfLines = 2;
            
            [self.buttonOk setFrame:CGRectMake(150, 280, 100, 50  )];
            self.buttonOk.titleLabel.font  = [UIFont boldSystemFontOfSize:14];
            
        }
        
        //self.buttonOk.delegate = self;
        
        
    }
    return self;
}

-(void) initButtonWithFrame :(CGRect)frame{
    buttonOk  = [[UIButton alloc] initWithFrame:frame];
    //buttonOk.backgroundColor = [[UIColor alloc] initWithPatternImage:imagePattern];
    buttonOk.backgroundColor = [UIColor grayColor];
    //buttonOk.titleLabel.textColor = [UIColor blackColor];
    buttonOk.layer.cornerRadius = 5;
    buttonOk.titleLabel.text = @"OK";
    buttonOk.titleLabel.font = [UIFont boldSystemFontOfSize:12];
    
    [buttonOk.titleLabel setTextColor:[UIColor blackColor]];
    [buttonOk.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
    [buttonOk.titleLabel setShadowColor:[UIColor blackColor]];
    [buttonOk.titleLabel setShadowOffset:CGSizeMake(-1, 1)];
    [buttonOk setTitle:@"OK" forState:UIControlStateNormal];
    
    [self addSubview:buttonOk];
    [buttonOk  addTarget:self action:@selector(opera) forControlEvents:UIControlEventTouchUpInside];
    
    
}
-(void) initTextFieldWithFrame :(CGRect)frame{
    
    UITextField *textFieldUserPas = [[UITextField alloc] initWithFrame:frame];
    textFieldUserPas.backgroundColor = [UIColor whiteColor];
    textFieldUserPas.textColor = [UIColor blackColor];
    textFieldUserPas.layer.cornerRadius = 5;
    textResponse = textFieldUserPas;
    [self addSubview:textFieldUserPas];
    self.textResponse.delegate = self;
    
    [textResponse setDelegate:self];
    
    
}


-(void) textFieldDidEndEditing:(UITextField *) textField{
    // [[self delegate] setUser:textFieldUser.text];
    //[self hide];
    [self opera];
    
}

-(void) viewWillDisappear:(BOOL) animated{
    
    
}

-(void) opera{
    if (textResponse.hidden == NO) {
        /* if ([textResponse.text length] == 0) {
         //[self sendMessage:@"Ingrese el nombre"  withTitle:@"error"];
         }else {*/
        
        //  [[self delegate] setUser2:textResponse.text];
        [textResponse resignFirstResponder];
        
        //isUserEntered = YES;
        [self hide];
        //}
    }else {
        [self hide];
        
    }
    
    
}

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    [self hide];
    return YES;
}

-(void) sendMessage:(NSString*) errMessage withTitle:(NSString *) title{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:errMessage delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
}



- (NSString *)show:(NSString *)theMessage andTitle:(NSString *)theMessageTitle {
    
    //self.textFieldUser.hidden = NO;
    
    if (labelNumber == 1)
        self.labelMessage.text = theMessage;
    self.labelMessage.hidden = NO;
    if (labelNumber == 2) {
        self.labelMessage.hidden = NO;
        self.labelMessage2.hidden = NO;
    }if (labelNumber == 3) {
        self.labelMessage.hidden = NO;
        self.labelMessage2.hidden = NO;
        self.labelMessage3.hidden = NO;
    }
    isUserEntered = NO;
    self.labelMessageTitle.text = theMessageTitle;
    //self.labelMessage.text = theMessage;
    //[self.activityIndicator startAnimating];
    self.hidden = NO;
    [self.superview bringSubviewToFront:self];
    self.alpha = .75;
    return textResponse.text;
    
    /*else {
     isUserEntered = NO;
     self.textResponse.hidden = YES;
     self.labelMessage.hidden = NO;
     self.labelMessage3.hidden = YES;
     //[labelMessage setFrame:CGRectMake(0, 0, 90, 100  )];
     labelMessage.numberOfLines = 3;
     self.labelMessage.font = [UIFont boldSystemFontOfSize:10];
     
     //self.
     self.labelMessageTitle.text = theMessageTitle;
     self.labelMessage.text = theMessage;
     self.buttonOk.hidden = YES;
     //[self.activityIndicator startAnimating];
     self.hidden = NO;
     [self.superview bringSubviewToFront:self];
     return textResponse.text;
     
     }*/
    
    //[self refreshPosition];
}

- (void)hide {
    //[self.activityIndicator stopAnimating];
    self.hidden = YES;
    // [[self delegate] setUser:textFieldUser.text];
    
}

- (void)refreshPosition {
    
    self.center = self.superview.center;
}

- (void)dealloc {
    self.labelMessage = nil;
    //self.activityIndicator = nil;
    
    //[super dealloc];
}

@end