//
//  EKWaterproofCamera.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKCamera.h"

@protocol EKWaterproofCameraDelegate

- (void)makeUnderwaterShot:(EKCamera *)camera;

@end


@interface EKWaterproofCamera : EKCamera <EKWaterproofCameraDelegate>

@property (nonatomic, weak) id <EKWaterproofCameraDelegate> delegate;

@end
