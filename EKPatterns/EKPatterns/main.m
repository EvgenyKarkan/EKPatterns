//
//  main.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 18.11.13.
//  Copyright (c) 2013 EvgenyKarkan. All rights reserved.
//

#import "EKImports.h" //  Classes imports. For ease of reading main.m file
#import "EKHelperFunctions.h" // <-- this file contains functions which helps to test APIs

int main(int argc, const char * argv[])
{
    @autoreleasepool {
            //CREATIONAL----------------------------------------------------------------------------
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
        
            //STRUCTURAL----------------------------------------------------------------------------
            //Adapter
        printf("\n%s\n", "ADAPTER  -----------------------------------------------------------------");
        EKWaterproofCamera *waterproofCamera = [[EKWaterproofCamera alloc] init];
        makeNewShot(waterproofCamera);
        
        EKSomeCamera *someAnotherCamera = [[EKSomeCamera alloc] init];
        EKSomeCameraWaterproofAdapter *adapterOfSomeCameraAllowingToMakeUnderwaterShot = [[EKSomeCameraWaterproofAdapter alloc] initWithSomeCameraToAdapt:someAnotherCamera];
        makeNewShot(adapterOfSomeCameraAllowingToMakeUnderwaterShot);
        
            //Bridge
        printf("\n%s\n", "BRIDGE  ------------------------------------------------------------------");
        EKEngine *engine = [[EKEngine alloc] init];
        EKGoodGasoline *goodGasoline = [[EKGoodGasoline alloc] init];
        EKBadGasoline *badGasoline = [[EKBadGasoline alloc] init];
        
        engine.gasoline = goodGasoline;
        [engine turnOn];
        
        engine.gasoline = badGasoline;
        [engine turnOn];
        
            //Facade
        printf("\n%s\n", "FACADE  ------------------------------------------------------------------");
        EKElevatorFacade *elevatorFacade = [[EKElevatorFacade alloc] init];
        [elevatorFacade pressControlPanelButton:42];

    }
    return 0;
}

