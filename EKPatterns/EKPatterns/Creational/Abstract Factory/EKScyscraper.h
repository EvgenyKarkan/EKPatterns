//
//  EKScyscraper.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 08.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//


@interface EKScyscraper : NSObject

@property (nonatomic, assign) CGFloat      height;
@property (nonatomic, assign) CGFloat      area;
@property (nonatomic, assign) NSUInteger   floors;

- (instancetype)initScyscraperWithHeight:(CGFloat)scyscraperHeigth
                                    area:(CGFloat)scyscraperArea
                                  floors:(NSUInteger)floorsCount;

@end
