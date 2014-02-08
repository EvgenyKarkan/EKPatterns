//
//  EKHouseFactory.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 08.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKScyscraper.h"
#import "EKCastle.h"

@interface EKHouseFactory : NSObject

- (EKScyscraper *)scyscraper;
- (EKCastle *)castle;

@end
