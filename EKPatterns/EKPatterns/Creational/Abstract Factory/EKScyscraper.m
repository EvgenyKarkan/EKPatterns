//
//  EKScyscraper.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 08.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKScyscraper.h"


@implementation EKScyscraper;

- (instancetype)initScyscraperWithHeight:(CGFloat)scyscraperHeigth
                                    area:(CGFloat)scyscraperArea
                                  floors:(NSUInteger)floorsCount
{
    NSParameterAssert(scyscraperHeigth > 0);
    NSParameterAssert(scyscraperArea > 0);
    NSParameterAssert(floorsCount > 0);
    
    self = [super init];
    if (self) {
        self.height = scyscraperHeigth;
        self.area   = scyscraperArea;
        self.floors = floorsCount;
    }
    return self;
}


@end
