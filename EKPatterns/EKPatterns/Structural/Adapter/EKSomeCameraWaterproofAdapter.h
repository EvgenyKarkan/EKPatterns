//
//  EKSomeCameraWaterproofAdapter.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKCamera.h"
#import "EKSomeCamera.h"
#import "EKWaterproofCamera.h"

@interface EKSomeCameraWaterproofAdapter : EKCamera <EKWaterproofCameraDelegate>

@property (nonatomic, strong) EKSomeCamera *someCamera;

- (instancetype)initWithSomeCameraToAdapt:(EKSomeCamera *)cameraToAdapt;
- (void)makeShot;

@end
