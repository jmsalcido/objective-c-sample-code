//
//  Person.h
//  BMITime
//
//  Created by Jose Miguel Salcido on 8/4/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    // 2 variables de instancia
    float heightInMeters;
    int weightInKilos;
}

// You will be able to set those instance variables using these methods
//- (float) heightInMeters;
//- (void) setHeightInMeters:(float) h;
//- (int) weightInKilos;
//- (void) setWeightInKilos:(int) w;
// This can be made with @property accessor method
@property float heightInMeters;
@property int weightInKilos;

// This method calculates the Body Mass Index
- (float) bodyMassIndex;

// Add to an NSMutableArray this Person
- (void) addYourSelfToArray:(NSMutableArray *) array;
@end