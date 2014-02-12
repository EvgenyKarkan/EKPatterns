//
//  EKDoorSystem.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKDoorSystem.h"

@implementation EKDoorSystem

- (void)closeDoor
{
    NSLog(@"%@", NSStringFromSelector(@selector(closeDoor)));
}

- (void)openDoor
{
    NSLog(@"%@", NSStringFromSelector(@selector(openDoor)));
}

@end
