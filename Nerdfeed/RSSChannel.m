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

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    NSLog(@"\t%@ found a %@ element", self, elementName);
    
    if ([elementName isEqual:@"title"]) {
        currentString = [[NSMutableString alloc] init];
        [self setTitle:currentString];
    }
    else if ([elementName isEqual:@"description"])
    {
        currentString = [[NSMutableString alloc] init];
        [self setInfoString:currentString];
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)str
{
    [currentString appendString:str];
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    
}

@end
