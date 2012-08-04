//
//  main.c
//  ClassCertificates
//
//  Created by Jose Miguel Salcido on 7/31/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void felicitarEstudiante(char *estudiante, char *curso, int numeroDias)
{
    printf("%s ha hecho suficiente programacion en %s como yo podria en %d dias.\n",
           estudiante, curso, numeroDias);
}

int main(int argc, const char * argv[])
{
    felicitarEstudiante("Mark", "Cocoa", 5);
    sleep(2);
    felicitarEstudiante("Bo", "Objective-C", 2);
    sleep(2);
    felicitarEstudiante("Mike", "Python", 5);
    sleep(2);
    felicitarEstudiante("Ted", "iOS", 5);
    
    // Siempre hay que regresar 0 (TRUE) o 1 (FALSE) sexsexsexsexsex!
    return 0;
}

