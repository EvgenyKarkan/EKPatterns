//
//  EKHamburgerBuilder.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKHamburgerBuilder.h"

@implementation EKHamburgerBuilder

- (void)makeName
{
    self.burger.name = @"Hamburger";
}

- (void)addBread
{
    self.burger.piecesOfBread = 2;
}

- (void)addMeat
{
    self.burger.piecesOfMeat = 1;
}

- (void)addCheese
{
    self.burger.piecesOfCheese = 1;
}

- (void)addMustard
{
    self.burger.mustard = YES;
}

- (void)addKetchup
{
    self.burger.ketchup = YES;
}

@end
