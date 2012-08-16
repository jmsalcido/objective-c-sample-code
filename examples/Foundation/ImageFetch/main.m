//
//  main.m
//  ImageFetch
//
//  Created by Jose Miguel Salcido on 8/14/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"http://google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = NULL;
        
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        if (!data) {
            NSLog(@"fetch failed:%@", [error localizedDescription]);
            return 1;
        } else {
            // Shit actually happens
        }
        
        NSLog(@"The file is %lu bytes", [data length]);
        
        BOOL written = [data writeToFile:@"/tmp/google.png"
                                 options:0
                                   error:&error];
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        } else {
            // Shit actually happens
        }
        
        NSLog(@"Sucess!!! check: /tmp/google.png");
        
    }
    return 0;
}

