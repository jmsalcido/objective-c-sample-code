//
//  main.m
//  DateList
//
//  Created by Jose Miguel Salcido on 8/3/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // One day in seconds would be 24 Hours * 60 Minutes * 60 seconds
        // In one hour there are 3600 seconds = 60.0 * 60.0
        // In one day there are 24 * 3600 seconds
        double oneDay = 24.0 * 60.0 * 60.0;
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval: oneDay];
        NSDate *yesterday = [now dateByAddingTimeInterval: -oneDay];
        
        // Create an array containing all three (nil terminates the list)
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        // How many dates are there?
        NSLog(@"There are %lu dates", [dateList count]);
        
        // Imprimir 2
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
        
        // Imprimir todos
        for(NSDate *d in dateList) {
            NSLog(@"Here is a date with for NSDate in dateList: %@", d);
        }
        
        NSUInteger dateCount = [dateList count];
        
        for (int i = 0; i < dateCount; i++) {
            NSDate *date = [dateList objectAtIndex:i];
            NSLog(@"The date at position %d is: %@ with classic for", i, date);
        }
    }
    return 0;
}

