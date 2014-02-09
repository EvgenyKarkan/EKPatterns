//
//  EKManagerOfBuilders.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 09.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKBurgerBuilder.h"
#import "EKBurger.h"

@interface EKManagerOfBurgerBuilders : NSObject

@property (nonatomic, strong) EKBurgerBuilder *burgerBuilder;

- (void)setupBurgerBuilder:(EKBurgerBuilder *)burgerBuilder;

- (EKBurger *)burger;
- (void)makeBurger;

@end
