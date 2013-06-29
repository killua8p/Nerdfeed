//
//  WebViewController.m
//  Nerdfeed
//
//  Created by Alan Huang on 29/06/13.
//  Copyright (c) 2013 Alan Huang. All rights reserved.
//

#import "WebViewController.h"

@implementation WebViewController

- (void)loadView
{
    CGRect screenFrame = [[UIScreen mainScreen] applicationFrame];
    UIWebView *wv = [[UIWebView alloc] initWithFrame:screenFrame];
    [wv setScalesPageToFit:YES];
    
    [self setView:wv];
}

- (UIWebView *)webView
{
    return (UIWebView *)[self view];
}

@end
