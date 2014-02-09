//
//  EKSmartphone.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKSmartphone.h"


@implementation EKSmartphone

- (id)copyWithZone:(NSZone *)zone
{
    EKSmartphone *smartphoneCopy = [EKSmartphone allocWithZone:zone];
    smartphoneCopy.brand = self.brand;
    smartphoneCopy.color = self.color;
    
    return smartphoneCopy;
}

@end
