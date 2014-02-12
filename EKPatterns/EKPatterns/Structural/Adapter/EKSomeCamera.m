//
//  EKSomeCamera.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKSomeCamera.h"

@implementation EKSomeCamera

- (void)makeOnLandShot:(EKCamera *)camera
{
    NSLog(@"%@'s instance is making new shot with %@'s features", NSStringFromClass([self class]), NSStringFromClass([camera class]));
}

@end
