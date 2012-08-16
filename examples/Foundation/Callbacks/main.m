//
//  main.m
//  Callbacks
//
//  Created by Jose Miguel Salcido on 8/14/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

// __unused para que el IDE no muestre el error de "variable no utilizada"

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // Logger que creamos
        Logger *logger = [[Logger alloc] init];
        
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];
        
        // NSURL que usaremos
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        
        // Request que utilizaremos
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn
                                    = [[NSURLConnection alloc] initWithRequest:request
                                                                      delegate:logger
                                                              startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                                   target:logger
                                                                 selector:@selector(sayOuch:)
                                                                 userInfo:nil
                                                                  repeats:YES];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}