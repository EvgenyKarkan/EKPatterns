//
//  EKBurger.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//


@interface EKBurger : NSObject

@property (nonatomic, copy)   NSString   *name;
@property (nonatomic, assign) NSUInteger  piecesOfBread;
@property (nonatomic, assign) NSUInteger  piecesOfMeat;
@property (nonatomic, assign) NSUInteger  piecesOfCheese;
@property (nonatomic, assign) BOOL        mustard;
@property (nonatomic, assign) BOOL        ketchup;

@end
