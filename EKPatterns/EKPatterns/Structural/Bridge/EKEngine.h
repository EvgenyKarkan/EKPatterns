//
//  EKEngine.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKGasoline.h"

@interface EKEngine : NSObject

@property (nonatomic, strong) EKGasoline *gasoline;

- (void)turnOn;

@end
