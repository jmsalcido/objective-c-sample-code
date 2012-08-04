//
//  main.c
//  TimeStructs
//
//  Created by Jose Miguel Salcido on 8/2/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#include <stdio.h>
#include <time.h>

void printTime(long secondsSince1970);

int main(int argc, const char * argv[])
{
    long seconds = time(NULL);
    printTime(seconds);
    
    seconds += (4 * 1000000);
    printTime(seconds);
    return 0;
}

void printTime(long secondsSince1970)
{
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    printf("The date is %d-%d-%d\n", (now.tm_mon+1), now.tm_mday, (2000 + (now.tm_year - 100)));
}
