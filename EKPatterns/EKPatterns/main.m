//
//  main.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 18.11.13.
//  Copyright (c) 2013 EvgenyKarkan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKHouseFactory.h"
#import "EKAmericanHouseFactory.h"
#import "EKEuropeHouseFactory.h"
#import "EKScyscraper.h"
#import "EKCastle.h"

    //Abstract fabric-------------------------------------------------------------------------------
BOOL isEurope = NO;
EKHouseFactory *functionThatReturnsFactory();

EKHouseFactory *functionThatReturnsFactory()
{
    if (isEurope) {
        return [[EKEuropeHouseFactory alloc] init];
    }
    else {
        return [[EKAmericanHouseFactory alloc] init];
    }
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
            //Abstract factory
        EKHouseFactory *factory = functionThatReturnsFactory();
        EKScyscraper *scyscraper = [factory scyscraper];
        EKCastle *castle = [factory castle];
        
        NSLog(@"Scyscraper type is %@ --> Height is %@, area is %@, floors is %@ ", NSStringFromClass([scyscraper class]),
                                                                                @(scyscraper.height), @(scyscraper.area), @(scyscraper.floors));
        NSLog(@"Castle type is %@ --> Age is %@, height is %@, floors is %@ with ghosts %@", NSStringFromClass([castle class]), @(castle.age), @(castle.height), @(castle.floors), (castle.ghosts ? @"YES" : @"NO"));
    }
    return 0;
}
