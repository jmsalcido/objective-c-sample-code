//
//  Asset.m
//  BMITime2
//
//  Created by Jose Miguel Salcido on 8/6/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import "Asset.h"

@implementation Asset
@synthesize label;
@synthesize resaleValue;
@synthesize holder;

- (NSString *) description
{
    if([self holder]) {
        return [NSString stringWithFormat:@"<%@: %d, assigned to %@>",
                [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d >",
                [self label], [self resaleValue]];
    }
}

- (void) dealloc
{
    NSLog(@"deallocatin %@", self);
}

@end
