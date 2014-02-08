//
//  EKCastle.h
//  EKPatterns
//
//  Created by Evgeny Karkan on 08.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//


@interface EKCastle : NSObject

@property (nonatomic, assign) NSUInteger   age;
@property (nonatomic, assign) CGFloat      height;
@property (nonatomic, assign) NSUInteger   floors;
@property (nonatomic, assign) BOOL         ghosts;

- (instancetype)initCastleWithAge:(NSUInteger)castleAge
                           height:(CGFloat)castleHeight
                           floors:(NSUInteger)floorsCount
                           ghosts:(BOOL)ghostsInCastle;

@end
