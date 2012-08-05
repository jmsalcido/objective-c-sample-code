//
//  StockHolding.m
//  Stocks
//
//  Created by Jose Miguel Salcido on 8/5/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice;
@synthesize currentSharePrice;
@synthesize numberOfShares;

- (float) costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float) valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
