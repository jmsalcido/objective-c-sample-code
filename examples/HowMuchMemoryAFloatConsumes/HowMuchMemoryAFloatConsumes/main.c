//
//  main.c
//  HowMuchMemoryAFloatConsumes
//
//  Created by Jose Miguel Salcido on 8/2/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float floatValue = 1.0;
    float *addressOfFloatValue = &floatValue;
    printf("The value of floatValue is %f\n", *addressOfFloatValue);
    printf("The size of a float is %zu bytes\n", sizeof(floatValue));
}

