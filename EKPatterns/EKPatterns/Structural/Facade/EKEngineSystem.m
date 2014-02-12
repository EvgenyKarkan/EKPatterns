//
//  EKEngineSystem.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKEngineSystem.h"

@implementation EKEngineSystem

- (void)start
{
    NSLog(@"%@", NSStringFromSelector(@selector(start)));
}

- (void)stopElevatorOnFloor:(NSUInteger)floorToStopElevator
{
    NSLog(@"Elevator was stopped on %@ floor", @(floorToStopElevator));
}

@end
