//
//  RSSChannel.m
//  Nerdfeed
//
//  Created by Phoebe Lv on 28/06/13.
//  Copyright (c) 2013 Alan Huang. All rights reserved.
//

#import "RSSChannel.h"

@implementation RSSChannel

@synthesize items, title, infoString, parentParserDelegate;

- (id)init
{
    self = [super init];
    
    if (self) {
        items = [[NSMutableArray alloc] init];
    }
    
    return self;
}

@end
