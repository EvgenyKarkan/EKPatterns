//
//  EKSomeCameraWaterproofAdapter.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKSomeCameraWaterproofAdapter.h"


@implementation EKSomeCameraWaterproofAdapter

- (instancetype)initWithSomeCameraToAdapt:(EKSomeCamera *)cameraToAdapt
{
    self = [super init];
    if (self) {
        self.someCamera = cameraToAdapt;
    }
    return self;
}

#pragma mark - Override inherited API

- (void)makeShot
{
    EKWaterproofCamera *waterproofCamera = [[EKWaterproofCamera alloc] init];
    waterproofCamera.delegate = self;
    [waterproofCamera makeShot];
}

#pragma mark - EKWaterproofCameraDelegate

- (void)makeUnderwaterShot:(EKCamera *)camera
{
    [self.someCamera makeOnLandShot:camera];
}

@end
