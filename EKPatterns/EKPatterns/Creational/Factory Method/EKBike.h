//
//  EKBike.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//


@interface EKBike : NSObject

@property (nonatomic, assign) CGFloat maxSpeed;

- (instancetype)initBikeWithMaxSpeed:(CGFloat)speed;

@end
