//
//  EKBurgerBuilder.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBurgerBuilder.h"

@implementation EKBurgerBuilder;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.burger = [[EKBurger alloc] init];
    }
    return self;
}

- (EKBurger *)readyBurger
{
    return self.burger;
}

    //just for silence compile warnings
- (void)makeName
{
    
}

- (void)addBread
{
    
}

- (void)addMeat
{
    
}

- (void)addCheese
{
    
}

- (void)addMustard
{
    
}

- (void)addKetchup
{
    
}

@end
