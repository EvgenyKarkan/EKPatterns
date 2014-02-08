//
//  EKEuropeHouseFactory.m
//  EKPatterns
//
//  Created by Evgeny Karkan on 08.02.14.
//  Copyright (c) 2014 EvgenyKarkan. All rights reserved.
//

#import "EKEuropeHouseFactory.h"


@implementation EKEuropeHouseFactory;

- (EKScyscraper *)scyscraper
{
    EKEuropeScyscraper *scyscraper = [[EKEuropeScyscraper alloc] initScyscraperWithHeight:100.0f
                                                                                     area:4000.0f
                                                                                   floors:30];
    return scyscraper;
}

- (EKCastle *)castle
{
    EKEuropeCastle *castle = [[EKEuropeCastle alloc] initCastleWithAge:350
                                                                height:20.0f
                                                                floors:4
                                                                ghosts:YES];
    return castle;
}

@end
