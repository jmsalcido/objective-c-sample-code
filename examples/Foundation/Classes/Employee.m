//
//  Employee.m
//  BMITime2
//
//  Created by Jose Miguel Salcido on 8/6/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeId;

- (float) bodyMassIndex
{
    float personBMI = [super bodyMassIndex];
    return personBMI * 0.9;
}

- (void) addAssetsObject:(Asset *)asset
{
    if (!assets) {
        assets = [[NSMutableSet alloc] init];
    } else {
        // No esta vacio
    }
    [assets addObject:asset];
    [asset setHolder:self];
}

- (unsigned int) valueOfAssets
{
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
            [self employeeId], [self valueOfAssets]];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
