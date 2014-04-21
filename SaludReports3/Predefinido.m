//
//  Predefinido.m
//  toefl3
//
//  Created by Clausulita on 06/05/13.
//  Copyright (c) 2013 HJM. All rights reserved.
//

#import "Predefinido.h"

@implementation Predefinido

@synthesize idPred, name, clave, value, sentence;


-(id)initWithId:(int)idP andName:(NSString*)nam andClave:(NSString*)cl andValue:(NSString*)val andSentence:(NSString*)sen{
    
    idPred = idP;
    name = nam;
    clave = cl;
    value = val;
    sentence = sen;
    
    return self;
    
    
}



@end
