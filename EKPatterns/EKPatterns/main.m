//
//  main.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 18.11.13.
//  Copyright (c) 2013 EvgenyKarkan. All rights reserved.
//

    //Abstract factory imports
#import "EKHouseFactory.h"
#import "EKAmericanHouseFactory.h"
#import "EKEuropeHouseFactory.h"
#import "EKScyscraper.h"
#import "EKCastle.h"
    //Builder imports
#import "EKManagerOfBurgerBuilders.h"
#import "EKHamburgerBuilder.h"
#import "EKBigMacBuilder.h"
#import "EKBurger.h"
    //Factory import
#import "EKBikeFactory.h"
    //Prototype import
#import "EKSmartphone.h"
    //Singleton import
#import "EKSingleton.h"

    //Abstract factory helper stuff ----------------------------------------------------------------
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
        
        printf("\n%s\n", "ABSTRACT FACTORY  --------------------------------------------------------");
        NSLog(@"Scyscraper type is %@ --> Height is %@, area is %@, floors is %@ ", NSStringFromClass([scyscraper class]),
              @(scyscraper.height), @(scyscraper.area), @(scyscraper.floors));
        NSLog(@"Castle type is %@ --> Age is %@, height is %@, floors is %@ with ghosts %@", NSStringFromClass([castle class]), @(castle.age), @(castle.height), @(castle.floors), (castle.ghosts ? @"YES" : @"NO"));
        
            //Builder
        printf("\n%s\n", "BUILDER  -----------------------------------------------------------------");
        EKHamburgerBuilder *hamburgerBuilder = [[EKHamburgerBuilder alloc] init];
        EKBigMacBuilder *bigMacBuilder = [[EKBigMacBuilder alloc] init];
        
        EKManagerOfBurgerBuilders *manager = [[EKManagerOfBurgerBuilders alloc] init];
        [manager setupBurgerBuilder:hamburgerBuilder];
        [manager makeBurger];
        
        EKBurger *burger = [manager burger];         //will make hamburger
        NSLog(@"%@ is ready", burger.name);
        
        [manager setupBurgerBuilder:bigMacBuilder];
        [manager makeBurger];
        
        EKBurger *burger2 = [manager burger];         //will make bigmac
        NSLog(@"%@ is ready", burger2.name);

            //Factory
        printf("\n%s\n", "FACTORY  -----------------------------------------------------------------");
        EKBikeFactory *bikeFactory = [[EKBikeFactory alloc] init];
        [bikeFactory bikeWithMaxSpeed:249.0f];         //will produce chopper
        [bikeFactory bikeWithMaxSpeed:300.0f];         //will produce sport bike
        
            //Prototype
        printf("\n%s\n", "PROTOTYPE  ---------------------------------------------------------------");
        EKSmartphone *coolPhone = [[EKSmartphone alloc] init];
        coolPhone.brand = @"CoolPhone";
        coolPhone.color = @"Black";
        
        EKSmartphone *amazingPhone = [coolPhone copy];         // create as just a copy of coolPhone but with the another memory address
        NSLog(@"AmazingPhone's brand is %@, color is %@, address is %p", amazingPhone.brand, amazingPhone.color, amazingPhone);
        amazingPhone.brand = @"AmazingPhohe";
        amazingPhone.color = @"Red";
        NSLog(@"AmazingPhone's brand is %@, color is %@, address is %p", amazingPhone.brand, amazingPhone.color, amazingPhone);
        NSLog(@"CoolPhone's brand is %@, color is %@, address is %p", coolPhone.brand, coolPhone.color, coolPhone);
        
            //Singleton
        printf("\n%s\n", "SINGLETON  ---------------------------------------------------------------");
        EKSingleton *foo = [EKSingleton singleton];
        EKSingleton *bar = [EKSingleton singleton];
        
        NSLog(@"Foo memory address is %p", foo);
        NSLog(@"Bar memory address is %p", bar);
        
    }
    return 0;
}
