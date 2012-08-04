//
//  main.m
//  MultipleArguments
//
//  Created by Jose Miguel Salcido on 8/3/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"%@", now);
        double seconds = [now timeIntervalSince1970];
        NSLog(@"Han pasado %f segundos desde 1970", seconds);
        
        // Si, no.
        seconds = 4 * 1000000;
        NSDate *later = [now dateByAddingTimeInterval:seconds];
        NSLog(@"En %d segundos sera %@", (int)seconds, later);
        
        // Obtener el dia utilizando varios argumentos al objeto NSCalendar
        NSCalendar *cal = [NSCalendar currentCalendar];
        
        // Multiple argumentos en el mensaje al objeto NSCalendar *cal como
        // podemos ver
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                        inUnit:NSMonthCalendarUnit
                                       forDate:now];
        
        // Fuck this shit.
        NSLog(@"Este es el dia %lu del mes", day);
    }
    return 0;
}

