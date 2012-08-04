//
//  main.m
//  MutableList
//
//  Created by Jose Miguel Salcido on 8/3/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Segundos en un dia
        double oneDaySeconds = 24.0 * 60.0 * 60.0;
        
        // Objetos
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:oneDaySeconds];
        NSDate *yesterday = [now dateByAddingTimeInterval:-oneDaySeconds];
        
        // Nuevo NSMutableArray
        NSMutableArray *arreglo = [NSMutableArray array];
        
        // Agregar objetos
        [arreglo addObject:now];
        [arreglo addObject:tomorrow];
        
        // En el indice 0 agregar un objeto
        [arreglo insertObject:yesterday atIndex:0];
        
        // Imprimir todos los objetos en el objeto NSMutableArray
        for(NSDate *date in arreglo) {
            NSLog(@"%@", date);
        }
        
        [arreglo removeObject:0];
        NSLog(@"at 0: %@", [arreglo objectAtIndex:0]);
    }
    return 0;
}

