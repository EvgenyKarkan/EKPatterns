//
//  EKBoxContainer.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 25.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBoxComposing.h"

@interface EKBoxContainer : NSObject <EKBoxComposing>

@property (nonatomic, assign) NSUInteger      containerVolume;
@property (nonatomic, strong) NSMutableArray *subBoxes;

@end
