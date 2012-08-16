//
//  Person.m
//  BMITime2
//
//  Created by Jose Miguel Salcido on 8/6/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters;
@synthesize weightInKilos;

- (float) bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
