//
//  main.c
//  BMICalc
//
//  Created by Jose Miguel Salcido on 8/2/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#include <stdio.h>

// Definimos el struct Person
struct Person {
    float heightInMeters;
    int weightInKilos;
}; // terminan con ;

// Utilizando typedef definimos un ALIAS para nuestro struct
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Persona;

float bodyMassIndex(Persona p);

int main(int argc, const char * argv[])
{
    //struct Person persona; // utilizando un struct
    Persona persona; // utilizando un struct por medio de typedef
    persona.weightInKilos = 96;
    persona.heightInMeters = 1.8;
    printf("person weights %i kilograms\n", persona.weightInKilos);
    printf("person is %.2f meters tall\n", persona.heightInMeters);
    float bmi = bodyMassIndex(persona);
    printf("person has a BMI of %.2f\n", bmi);
    return 0;
}

float bodyMassIndex(Persona p)
{
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

