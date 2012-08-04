//
//  main.c
//  ChallengeDivideBy3
//
//  Write a program that counts backward from 99 through 0 by 3, printing each number.
//  However, if the number is divisible by 5, it should also print the words:
//  "Found one!".
//
//  Created by Jose Miguel Salcido on 8/1/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#include <stdio.h>

void printFound();
void execute();

int main(int argc, const char * argv[])
{
    execute();
}

void execute()
{
    int i;
    for(i = 99; i >= 0; i -= 3)
    {
        printf("%d\n", i);
        if(i%5 == 0) {
            printFound();
        } else {
            // Do nothing
        }
    }
}

void printFound()
{
    printf("Found one!\n");
}

