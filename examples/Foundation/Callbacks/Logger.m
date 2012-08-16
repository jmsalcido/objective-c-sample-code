//
//  Logger.m
//  Callbacks
//
//  Created by Jose Miguel Salcido on 8/14/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import "Logger.h"

@implementation Logger

-(void) sayOuch:(NSTimer *) t;
{
    NSLog(@"Ouch!");
}

// Llamado cada vez que llega un paquete de datos
-(void) connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    // Crear NSMutableData si no existe
    if(!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    } else {
        // ya existe
    }
    
    // Le agregamos los datos que obtuvimos a los datos que usaremos al final.
    [incomingData appendData:data];
}

// Llamado cuando el ultimo paquete de datos se carga
-(void) connectionDidFinishLoading:(NSURLConnection *) connection
{
    // Avisamos al chavo que ya estan todos los datos
    NSLog(@"Got it all!");
    
    // Como es una cadena de texto, construimos un string con todos los datos :)
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    
    // Ponemos nil el paquete de datos
    incomingData = nil;
    
    // Numero de caracteres
    NSLog(@"string has %lu characters", [string length]);
    
    // Mostrar texto
    NSLog(@"%@", [string description]);
}

// Llamado cuando ocurre un error en la conexion
-(void) connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil;
}

// Llamado cuando se cambia el TimeZone en el sistema
-(void) zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed.");
}

@end
