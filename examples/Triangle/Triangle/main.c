//
//  main.c
//  Triangle
//
//  Created by Jose Miguel Salcido on 7/31/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float remainingAngle(float angleA, float angleB);

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return EXIT_SUCCESS;
}

float remainingAngle(float angleA, float angleB)
{
    // As said, the interior angles of a triangle must add up to 180 degrees (ALWAYS)
    float maxAngle = 180.0;
    
    // So, 180 - X degrees equals the last angle.
    return maxAngle - (angleA + angleB);
}

