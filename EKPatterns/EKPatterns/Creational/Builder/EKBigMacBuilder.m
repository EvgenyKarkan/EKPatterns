//
//  EKBigMacBuilder.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBigMacBuilder.h"

@implementation EKBigMacBuilder

- (void)makeName
{
    self.burger.name = @"BigMac";
}

- (void)addBread
{
    self.burger.piecesOfBread = 3;
}

- (void)addMeat
{
    self.burger.piecesOfMeat = 2;
}

- (void)addCheese
{
    self.burger.piecesOfCheese = 2;
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
