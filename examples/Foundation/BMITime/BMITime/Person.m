//
//  Person.m
//  BMITime
//
//  Created by Jose Miguel Salcido on 8/4/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import "Person.h"

@implementation Person

// synthesize accessor method does all the below commented code! :D magic/vodoo!
@synthesize heightInMeters;
@synthesize weightInKilos;
//- (float) heightInMeters
//{
//    return heightInMeters;
//}
//
//- (void) setHeightInMeters:(float)h
//{
//    heightInMeters = h;
//}
//
//- (int) weightInKilos
//{
//    return weightInKilos;
//}
//
//- (void) setWeightInKilos:(int)w
//{
//    weightInKilos = w;
//}

- (float) bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}
@end
