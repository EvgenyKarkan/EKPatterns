//
//  EKSomeCamera.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKCamera.h"

@interface EKSomeCamera : NSObject   // this is adaptee class, so we want to let EKSomeCamera instance to make underwater shot

- (void)makeOnLandShot:(EKCamera *)camera;

@end
