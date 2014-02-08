//
//  EKCastle.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 08.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKCastle.h"


@implementation EKCastle;

- (instancetype)initCastleWithAge:(NSUInteger)castleAge
                           height:(CGFloat)castleHeight
                           floors:(NSUInteger)floorsCount
                           ghosts:(BOOL)ghostsInCastle
{
    NSParameterAssert(castleAge > 0);
    NSParameterAssert(castleHeight > 0);
    NSParameterAssert(floorsCount > 0);
    
    self = [super init];
    if (self) {
        self.age = castleAge;
        self.height = castleHeight;
        self.floors = floorsCount;
        self.ghosts = ghostsInCastle;
    }
    return self;
}

@end
