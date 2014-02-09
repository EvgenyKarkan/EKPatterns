//
//  EKBikeFactory.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBike.h"


@interface EKBikeFactory : NSObject

- (EKBike *)bikeWithMaxSpeed:(CGFloat)maxSpeed;

@end
