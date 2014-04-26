//
//  NSMutableArray+Shuffle.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 26.04.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "NSMutableArray+Shuffle.h"


@implementation NSMutableArray (Shuffle);

#pragma mark - Array shuffle

- (NSMutableArray *)shuffle
{
    NSUInteger i = [self count];
    
    while (i) {
        NSUInteger randomIndex = arc4random_uniform((u_int32_t)i);
        [self exchangeObjectAtIndex:randomIndex withObjectAtIndex:--i];
    }
    
    return self;
}

@end
