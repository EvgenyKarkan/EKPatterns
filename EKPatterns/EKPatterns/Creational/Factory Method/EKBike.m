//
//  EKBike.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBike.h"


@implementation EKBike;

- (instancetype)initBikeWithMaxSpeed:(CGFloat)speed
{
    NSParameterAssert(speed > 0);
    
    self = [super init];
    if (self) {
        self.maxSpeed = speed;
        NSLog(@"Bike of type %@ with %@ kmp/h speed limit was successfuly created", NSStringFromClass([self class]), @(self.maxSpeed));
    }
    return self;
}

@end
