//
//  Logger.h
//  Callbacks
//
//  Created by Jose Miguel Salcido on 8/14/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
{
    NSMutableData *incomingData;
}
-(void) sayOuch:(NSTimer *) t;
@end
