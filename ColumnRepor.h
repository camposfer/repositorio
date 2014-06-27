//
//  ColumnRepor.h
//  NUMB3Reader
//
//  Created by Felipe on 26/05/14.
//  Copyright (c) 2014 Felipe Morales Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "collectionViewMovable.h"
#import "buttonWithStyle.h"

@interface ColumnRepor : NSObject{
    
    int idColumnRepor;
    collectionViewMovable *collectionView;
    NSString *nameTitle;
    UITextAlignment *textAlignment;
    NSString *type;
    NSString *movable;
    NSMutableArray *array;
    buttonWithStyle *buttonTitle;
}

@property (nonatomic) int idColumnRepor;
@property (nonatomic) collectionViewMovable *collectionView;
@property (nonatomic) NSString *nameTitle;
@property (nonatomic) UITextAlignment *textAlignment;
@property (nonatomic) NSString *type;
@property (nonatomic) NSString *movable;
@property (nonatomic) NSMutableArray *array;
@property (nonatomic) buttonWithStyle *buttonTitle;

-(id)initWithId:(int) idCo andCollectionView:(UICollectionView*) colle andNameTitle:(NSString*) nameT andTextAlignment:(UITextAlignment*)textA andType:(NSString*)typ andMovable:(NSString*)mov andArray:(NSMutableArray*) arr;

@end
