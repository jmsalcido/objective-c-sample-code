//
//  main.c
//  PolarAndCartesianCoords
//
//  Created by Jose Miguel Salcido on 8/2/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y, double *radiusPtr, double *thetaPtr);
float calculateTheta(float x, float y);

int main(int argc, const char * argv[])
{
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f)\n", x, y, radius, angle);
    
    return 0;
}

void cartesianToPolar(float x, float y, double *radiusPtr, double *thetaPtr)
{
    // Es radiusPtr diferente de NULL?
    if(radiusPtr) {
        // Guardamos el valor del radio con esta formula
        *radiusPtr = sqrt(x * x + y * y);

    }
    
    // Es thetaPtr NULL?
    if(!thetaPtr) {
        // Saltarnos la funcion entera
        return;
    }
    
    // Calculamos theta
    *thetaPtr = calculateTheta(x, y);
}

float calculateTheta(float x, float y)
{
    float theta;
    if (x == 0.0) {
        if (y == 0.0) {
            theta = 0.0; // origen
        } else if (y > 0) {
            theta = M_PI_2;
        } else {
            theta = - M_PI_2;
        }
    } else {
        theta = atan(y/x);
    }
    return theta;
}

