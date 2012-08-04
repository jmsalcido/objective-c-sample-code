//
//  main.m
//  TimeAfterTime
//
//  Created by Jose Miguel Salcido on 8/2/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        //NSLog(@"The new date lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:1000000];
        NSLog(@"In 1000,000 seconds it will be %@", later);
    }
    return 0;
}

