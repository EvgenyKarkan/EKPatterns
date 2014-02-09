//
//  EKManagerOfBuilders.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKManagerOfBurgerBuilders.h"

@implementation EKManagerOfBurgerBuilders;

- (void)setupBurgerBuilder:(EKBurgerBuilder *)burgerBuilder
{
    self.burgerBuilder = burgerBuilder;
}

- (EKBurger *)burger
{
    return [self.burgerBuilder burger];
}

- (void)makeBurger
{
    [self.burgerBuilder makeName];
    [self.burgerBuilder addBread];
    [self.burgerBuilder addMeat];
    [self.burgerBuilder addCheese];
    [self.burgerBuilder addMustard];
    [self.burgerBuilder addKetchup];
}

@end
