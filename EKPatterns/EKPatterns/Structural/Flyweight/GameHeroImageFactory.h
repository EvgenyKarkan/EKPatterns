//
//  GameHeroImageFactory.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 8/10/14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//


@interface GameHeroImageFactory : NSObject

+ (NSImage *)getImage:(NSString *)imageName;

@end
