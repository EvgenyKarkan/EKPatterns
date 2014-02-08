//
//  EKAmericanHouseFactory.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 08.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKAmericanHouseFactory.h"


@implementation EKAmericanHouseFactory;

- (EKScyscraper *)scyscraper
{
    EKAmericanScyscraper *scyscraper = [[EKAmericanScyscraper alloc] initScyscraperWithHeight:200.0f
                                                                                         area:8000.0f
                                                                                       floors:50];
    return scyscraper;
}

- (EKCastle *)castle
{
    EKAmericanCastle *castle = [[EKAmericanCastle alloc] initCastleWithAge:200
                                                                    height:15.0f
                                                                    floors:3
                                                                    ghosts:NO];
    return castle;
}

@end
