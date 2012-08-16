//
//  Employee.h
//  BMITime2
//
//  Created by Jose Miguel Salcido on 8/6/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeId;
    NSMutableSet *assets;
}

@property int employeeId;

- (void) addAssetsObject:(Asset *) asset;
- (unsigned int) valueOfAssets;

@end
