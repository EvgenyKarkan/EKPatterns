//
//  EKElevatorFacade.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKElevatorFacade.h"
#import "EKEngineSystem.h"
#import "EKDoorSystem.h"
#import "EKSoundSystem.h"

@implementation EKElevatorFacade

- (void)pressControlPanelButton:(NSUInteger)numberOfFloorButton
{
    EKDoorSystem *doorSystem = [[EKDoorSystem alloc] init];
    [doorSystem closeDoor];
    
    EKEngineSystem *engineSystem = [[EKEngineSystem alloc] init];
    [engineSystem start];
    
    [engineSystem stopElevatorOnFloor:numberOfFloorButton];
    
    EKSoundSystem *soundSystem = [[EKSoundSystem alloc] init];
    [soundSystem reportFloorNumber:numberOfFloorButton];
    
    [doorSystem openDoor];
}

@end
