//
//  RSSChannel.h
//  Nerdfeed
//
//  Created by Phoebe Lv on 28/06/13.
//  Copyright (c) 2013 Alan Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSSChannel : NSObject

@property (nonatomic, weak) id parentParserDelegate;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *infoString;
@property (nonatomic, readonly, strong) NSMutableArray *items;

@end
