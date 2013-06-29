//
//  ListViewcController.h
//  Nerdfeed
//
//  Created by Alan Huang on 24/06/13.
//  Copyright (c) 2013 Alan Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RSSChannel;
@class WebViewController;

@interface ListViewcController : UITableViewController <NSXMLParserDelegate>
{
    NSURLConnection *connection;
    NSMutableData *xmlData;
    RSSChannel *channel;
}
@property (nonatomic, strong) WebViewController *webViewController;
- (void)fetchEntries;
@end
