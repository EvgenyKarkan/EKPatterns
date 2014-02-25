//
//  Box.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 25.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBoxComposing.h"

@interface EKBox : NSObject <EKBoxComposing>

@property (nonatomic, assign) NSUInteger boxVolume;

@end
