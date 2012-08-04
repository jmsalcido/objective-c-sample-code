//
//  main.m
//  ComputerName
//
//  Created by Jose Miguel Salcido on 8/3/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSLog(@" ===  Imprimire el nombre de la computadora  === ");
        NSHost *host = [NSHost currentHost];
        NSString *computer_name = [host localizedName];
        NSLog(@"%@", computer_name);
    }
    return 0;
}

