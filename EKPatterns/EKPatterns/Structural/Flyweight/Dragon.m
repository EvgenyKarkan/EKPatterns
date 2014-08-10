//
//  Dragon.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 8/10/14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon;

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.image = [GameHeroImageFactory getImage:@"dragonAsset"];
    }
    
    return self;
}

@end
