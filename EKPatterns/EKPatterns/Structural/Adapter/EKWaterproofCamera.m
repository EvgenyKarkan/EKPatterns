//
//  EKWaterproofCamera.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKWaterproofCamera.h"

@implementation EKWaterproofCamera

- (id)init
{
    self = [super init];
    if (self) {
        self.delegate = self;
    }
    return self;
}

- (void)makeUnderwaterShot:(EKCamera *)camera
{
    NSLog(@"%@'s instance is making underwater shot", NSStringFromClass([camera class]));
}

- (void)makeShot
{
    [self.delegate makeUnderwaterShot:self];
    [super makeShot];
}

@end
