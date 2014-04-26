//
//  EKCinemaProxy.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 26.04.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKCinemaProxy.h"


@implementation EKCinemaProxy;

#pragma mark - Initializer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cinema = [[EKCinema alloc] init];
    }
    return self;
}

#pragma mark - Public API

- (void)provideAccessToFulHDMoview
{
    if (!self.isPremiumAccount) {
        [self provideAccessToMoview];
        return;
    }
    else {
        [self.cinema showFullHDMovie];
    }
}

- (void)provideAccessToMoview
{
    [self.cinema showMovie];
}

@end
