//
//  BoxComposing.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 25.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//


@protocol EKBoxComposing <NSObject>

- (NSUInteger)freeVolume;
@optional
- (void)addSubBox:(id <EKBoxComposing> )box;
- (void)printDescription;

@end
