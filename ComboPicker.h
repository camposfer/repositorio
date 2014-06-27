//
//  ComboPicker.h
//  NUMB3Reader
//
//  Created by Felipe on 20/04/14.
//  Copyright (c) 2014 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALPickerView.h"
#import "buttonWithStyle.h"

@interface ComboPicker : NSObject{
    ALPickerView *pickerView;
    NSMutableArray *arrayElements;
    buttonWithStyle *buttonOk;
    
}

@end
