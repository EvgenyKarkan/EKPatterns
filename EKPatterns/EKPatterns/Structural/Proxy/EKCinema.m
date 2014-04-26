//
//  Cinema.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 26.04.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKCinema.h"


@implementation EKCinema;

- (void)showFullHDMovie
{
    NSLog(@"Called method is ==> %@", NSStringFromSelector(_cmd));
}

- (void)showMovie
{
    NSLog(@"Called method is ==> %@", NSStringFromSelector(_cmd));
}

@end
