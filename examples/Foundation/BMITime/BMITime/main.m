//
//  main.m
//  BMITime
//
//  Created by Jose Miguel Salcido on 8/4/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an instance of Person
        Person *persona = [[Person alloc] init];
        
        // Give the instance variables interesting values
        [persona setWeightInKilos:96];
        [persona setHeightInMeters:1.8];
        
        // Calculate the BMI calling the method bodyMassIndex
        float bmi = [persona bodyMassIndex];
        
        // Output
        NSLog(@"persona (%d, %.2f) has a BMI of %f",
              [persona weightInKilos], [persona heightInMeters], bmi);
        
        // persona.weightInKilos = [persona weightInKilos]
        // Dot notation works in data members
    }
    return 0;
}

