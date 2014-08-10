//
//  GameHeroImageFactory.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 8/10/14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "GameHeroImageFactory.h"


@implementation GameHeroImageFactory


static NSMutableDictionary *imageDictionary = nil;

+ (NSImage *)getImage:(NSString *)imageName
{
    if (imageDictionary == nil) {
        imageDictionary = [[NSMutableDictionary alloc] init];
    }
    
    if ([imageDictionary objectForKey:imageName] == nil) {
        NSString *stringName = [[NSString alloc] initWithFormat:@"%@", imageName];
        
        [imageDictionary setObject:[NSImage imageNamed:stringName] ? [NSImage imageNamed:stringName]:[NSNull null]
                            forKey:imageName];
        
        NSLog(@"Loading image of the %@", imageName);
    }
    
    return [imageDictionary objectForKey:imageName];
}

@end
