//
//  EKSoundSystem.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKSoundSystem.h"

@implementation EKSoundSystem

- (void)reportFloorNumber:(NSUInteger)floorOnWhichElevatorDidStopped
{
    NSLog(@"You came to the %@ floor", @(floorOnWhichElevatorDidStopped));
}

@end
