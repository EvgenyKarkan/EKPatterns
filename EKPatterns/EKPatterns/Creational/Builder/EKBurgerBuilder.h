//
//  EKBurgerBuilder.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBurger.h"

@interface EKBurgerBuilder : NSObject

@property (nonatomic, strong) EKBurger *burger;

- (void)makeName;
- (void)addBread;
- (void)addMeat;
- (void)addCheese;
- (void)addMustard;
- (void)addKetchup;

- (EKBurger *)readyBurger;

@end
