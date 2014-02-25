//
//  EKBoxContainer.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 25.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBoxContainer.h"
#import "EKBox.h"

@implementation EKBoxContainer;

- (id)init
{
    self = [super init];
    if (self) {
        self.subBoxes = [@[] mutableCopy];
    }
    return self;
}

#pragma mark - BoxComposing protocol

- (NSUInteger)freeVolume
{
    NSUInteger result = 0;
    
    if ([self.subBoxes count] > 0) {
        NSUInteger sum = 0;
        NSUInteger sum2 = 0;
        
        for (id <EKBoxComposing> foo in self.subBoxes) {
            if ([foo isKindOfClass:[EKBox class]]) {
                sum += ((EKBox *)foo).boxVolume;
            }
            else {
                sum2 += ((EKBoxContainer *)foo).containerVolume;
            }
        }
        
        result = self.containerVolume - sum - sum2;
    }
    else {
        result = self.containerVolume;
    }
    
    return result;
}

- (void)addSubBox:(id <EKBoxComposing> )box
{
    if ([box isKindOfClass:[EKBox class]]) {
        if (((EKBox *)box).boxVolume <= [self freeVolume]) {
            [self.subBoxes addObject:box];
        }
        else {
            NSLog(@"Box is too big to add it");
        }
    }
    
    if ([box isKindOfClass:[EKBoxContainer class]]) {
        if (((EKBoxContainer *)box).containerVolume <= [self freeVolume]) {
            [self.subBoxes addObject:box];
        }
        else {
            NSLog(@"Box is too big to add it");
        }
    }
}

- (void)printDescription
{
    if ([self.subBoxes count] > 0) {
        for (id <EKBoxComposing> box in self.subBoxes) {
            NSParameterAssert(box != nil);
            
            if ([box isKindOfClass:[EKBox class]]) {
                NSLog(@"%@ contains %@ with value %@", self, ((EKBox *)box), @(((EKBox *)box).boxVolume));
            }
            
            if ([box isKindOfClass:[EKBoxContainer class]]) {
                if ([((EKBoxContainer *)box).subBoxes count] == 0) {
                    NSLog(@"%@ contains empty container %@ with value %@", self, ((EKBoxContainer *)box), @(((EKBoxContainer *)box).containerVolume));
                }
                else {
                    for (id <EKBoxComposing> object in ((EKBoxContainer *)box).subBoxes) {
                        if ([object isKindOfClass:[EKBox class]]) {
                            NSLog(@"%@ contains %@ wich contains %@ with value %@", self, ((EKBoxContainer *)box), ((EKBox *)object), @(((EKBox *)object).boxVolume));
                        }
                        if ([object isKindOfClass:[EKBoxContainer class]]) {
                            NSLog(@"%@ contains %@ wich contains %@ with hierarchy below", self, ((EKBoxContainer *)box), object);
                            [object printDescription];
                        }
                    }
                }
            }
        }
    }
    else {
        NSLog(@"Container is empty");
    }
}

@end
