//
//  EKBikeFactory.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBikeFactory.h"
#import "EKChopper.h"
#import "EKSportBike.h"


@implementation EKBikeFactory

- (EKBike *)bikeWithMaxSpeed:(CGFloat)maxSpeed
{
    NSParameterAssert(maxSpeed > 0.0f);
    
    if (maxSpeed > 0.0f && maxSpeed <= 250.0f) {
        return [[EKChopper alloc] initBikeWithMaxSpeed:maxSpeed];
    }
    else {
        return [[EKSportBike alloc] initBikeWithMaxSpeed:maxSpeed];
    }
}

@end
