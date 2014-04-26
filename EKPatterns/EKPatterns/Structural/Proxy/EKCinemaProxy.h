//
//  EKCinemaProxy.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 26.04.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKCinema.h"

@interface EKCinemaProxy : NSObject

@property (nonatomic, assign) BOOL isPremiumAccount;
@property (nonatomic, strong) EKCinema *cinema;

- (void)provideAccessToFulHDMoview;
- (void)provideAccessToMoview;

@end
