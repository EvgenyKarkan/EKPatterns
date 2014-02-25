//
//  EKSingleton.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 08.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKSingleton.h"


@implementation EKSingleton;

static id sharedInstance = nil;

+ (instancetype)singleton
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[EKSingleton alloc] init];
    });
    
    return sharedInstance;
}

+ (id)allocWithZone:(NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = nil;
        sharedInstance = [super allocWithZone:zone];
    });
    
    return sharedInstance;
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

+ (id)new
{
    NSException *exception = [[NSException alloc] initWithName:@"It's not possible to call +new method directly"
                                                        reason:@"Use +sharedInstance instead"
                                                      userInfo:nil];
    [exception raise];
    
    return nil;
}

@end
