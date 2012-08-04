//
//  main.m
//  NSTimeZoneExample
//
//  Build a Foundation Command Line Tool that tell you if it is currently
//  daylight savings time
//
//  Created by Jose Miguel Salcido on 8/3/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

bool isDaylightSavingTime(NSTimeZone *timeZone);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        bool isDaylight;
        char *result;
        
        // Obtain the system date timeZone
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        
        // Look if daylight saving time is on
        isDaylight = isDaylightSavingTime(timeZone);
        
        // 1 for true
        // 0 for false
        // define answers
        if(isDaylight) {
            result = "yes";
        } else {
            result = "no";
        }
        
        // print log
        NSLog(@"%s", result);
    }
    return 0;
}

bool isDaylightSavingTime(NSTimeZone *timeZone) {
    return [timeZone isDaylightSavingTime];
}