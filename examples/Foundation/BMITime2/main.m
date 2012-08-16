//
//  main.m
//  BMITime2
//
//  Created by Jose Miguel Salcido on 8/6/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *empleados = [[NSMutableArray alloc] init];
        NSMutableDictionary *ejecutivos = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Employee *empleado = [[Employee alloc] init];
            [empleado setWeightInKilos:90+i];
            [empleado setHeightInMeters:1.8 + i/10.0];
            [empleado setEmployeeId:i];
            
            [empleados addObject:empleado];
            
            if (i == 0) {
                [ejecutivos setObject:empleado forKey:@"CEO"];
            } else if (i == 1) {
                [ejecutivos setObject:empleado forKey:@"CTO"];
            } else {
                // DO NOTHING HUEHUE
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc] init];
            
            NSString *label = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:label];
            [asset setResaleValue:i * 17];
            
            NSUInteger randomIndex = random() % [empleados count];
            
            Employee *empleadoRandom = [empleados objectAtIndex:randomIndex];
            
            [empleadoRandom addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        // Ordenar un arreglo
        // Se crean objetos de tipo NSSortDescriptor con el metodo:
        //  sortDescriptorWithKey:(NSString propiedad)ascending:(YES|NO)
        NSSortDescriptor *valueOfAssets = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *employeeID = [NSSortDescriptor sortDescriptorWithKey:@"employeeId" ascending:TRUE];
        
        // Se agregan los objetos que describen el orden en un arreglo y se le manda
        // al arreglo que queremos ordenar con el metodo:
        // sortUsingDescriptors:NSArray
        [empleados sortUsingDescriptors:[NSArray arrayWithObjects:valueOfAssets, employeeID, nil]];
        
        
        // Filtrar un arreglo
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Ejecutivos: %@", ejecutivos);
        
        NSLog(@"Empleados: %@", empleados);
        NSLog(@"Quitando a un empleado");
        [empleados removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        NSLog(@"Quitando el arreglo entero");
        allAssets = nil;
        empleados = nil;
    }
    return 0;
}

