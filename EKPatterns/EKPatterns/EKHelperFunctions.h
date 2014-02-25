//
//  EKHelperFunctions.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 12.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#ifndef EKPatterns_EKHelperFunctions_h
#define EKPatterns_EKHelperFunctions_h

    //Abstract factory helper
BOOL isEurope = NO;
EKHouseFactory* functionThatReturnsFactory();

EKHouseFactory* functionThatReturnsFactory()
{
    if (isEurope) {
        return [[EKEuropeHouseFactory alloc] init];
    }
    else {
        return [[EKAmericanHouseFactory alloc] init];
    }
}

    //Adapter helper 
void makeNewShot(EKCamera *camera);

void makeNewShot(EKCamera *camera)
{
    [camera makeShot];
}

#endif
