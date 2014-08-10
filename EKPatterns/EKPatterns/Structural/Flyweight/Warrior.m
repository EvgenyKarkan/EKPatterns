//
//  Warrior.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 8/10/14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior;

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.image = [GameHeroImageFactory getImage:@"warriorAsset"];
    }
    
    return self;
}

@end
