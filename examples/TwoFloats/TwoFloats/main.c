//
//  main.c
//  TwoFloats
//
//  Created by Jose Miguel Salcido on 7/31/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#include <stdio.h>

int challenge();

int main(int argc, const char * argv[])
{
    challenge();
    return 0;
}

int challenge() {
    int i = 20;
    int j = 25;
    
    int k = (i > j) ? 10: 5;
    
    if ( 5 < j - k) {
        printf("The first expression is true.");
    } else if ( j > i) {
        printf("The second expression is true.");
    } else {
        printf("Neither expression is true.");
    }
    return 0;
}

