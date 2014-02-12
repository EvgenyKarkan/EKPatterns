//
//  EKBadGasoline.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBadGasoline.h"

@implementation EKBadGasoline

- (void)burn
{
    NSLog(@"%@'s instance is burning with black smoke", NSStringFromClass([self class]));
}

@end
