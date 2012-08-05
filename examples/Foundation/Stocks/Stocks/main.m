//
//  main.m
//  Stocks
//
//  Created by Jose Miguel Salcido on 8/5/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"


// Prototipos de funciones en C
void challenge();
void fillStock(StockHolding *stock, float purchasePrice, float currentPrice, int numberOfShares);
void fillArray(int count, NSMutableArray *array, ...);
void imprimirArray(NSMutableArray *array);

// Funcion main
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSLog(@"Challengue Stocks");
        challenge();
    }
    return 0;
}

// Print the value of 3 StockHolding objects.
void challenge()
{
    // Arreglo que manejara los stocks
    NSMutableArray *arregloDeStocks = [NSMutableArray array];
    
    // Iniciamos los 3 objetos de StockHolding
    StockHolding *stock1 = [[StockHolding alloc] init];
    StockHolding *stock2 = [[StockHolding alloc] init];
    StockHolding *stock3 = [[StockHolding alloc] init];
    
    // Llenar cada stock con su informacion necesaria
    fillStock(stock1, 2.3, 4.5, 40);
    fillStock(stock2, 12.19, 10.56, 90);
    fillStock(stock3, 45.1, 49.51, 210);
    
    // Llenar el arreglo de stocks, ni tan variable igual meto una constante antes
    //  algun otro metodo he de encontrar luego! :)
    fillArray(3, arregloDeStocks, stock1, stock2, stock3);
    
    // Imprimir todo el arreglo
    imprimirArray(arregloDeStocks);
}

// Llenar un StockHolding con sus parametros necesarios (iniciar vaya)
void fillStock(StockHolding *stock, float purchasePrice, float currentPrice, int numberOfShares)
{
    // Evadir errores please.
    if(stock == nil) {
        return;
    }
    
    // Darle valores interesantes a nuestro StockHolding
    [stock setPurchaseSharePrice:purchasePrice];
    [stock setCurrentSharePrice:currentPrice];
    [stock setNumberOfShares:numberOfShares];
}

// Llenar el arreglo de StockHoldings, ... significa un numero variable de parametros :)
void fillArray(int count, NSMutableArray *array, ...)
{
    // Utilizar un numero de parametros incierto
    va_list parametros;
    va_start(parametros, array);
    
    // Agregar al arreglo todos los paremtros
    for (int i = 0; i < count; i++) {
        [array addObject:va_arg(parametros, StockHolding *)];
    }
    va_end(parametros);
}

// Imprimir cada objeto dentro de un NSMutableArray
void imprimirArray(NSMutableArray *array)
{
    // Imprimir cada StockHolding dentro del arreglo
    for (StockHolding *stock in array) {
        NSLog(@"StockInfo: costInDollars:%f, valueInDollars:%f", [stock costInDollars], [stock valueInDollars]);
    }
}