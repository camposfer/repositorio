//
//  Predefinido.h
//  toefl3
//
//  Created by Clausulita on 06/05/13.
//  Copyright (c) 2013 HJM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Predefinido : NSObject{
    int idPred;
    NSString *name;
    NSString *clave;
    NSString *value;
    NSString *sentence;
    
}

@property (nonatomic) int idPred;
@property (retain) NSString *name;
@property (retain) NSString *clave;
@property (retain) NSString *value;
@property (retain) NSString *sentence;

-(id)initWithId:(int)idP andName:(NSString*)nam andClave:(NSString*)cl andValue:(NSString*)val andSentence:(NSString*)sen;


@end
