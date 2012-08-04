//
//  main.c
//  Degrees
//
//  Created by Jose Miguel Salcido on 7/31/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#include <stdio.h>

float fahrenheitFromCelsius(float cel);

float lastTemperature;

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit\n", freezeInF);
    printf("The last temperature converted was %f\n", lastTemperature);
    return 0;
}

float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}