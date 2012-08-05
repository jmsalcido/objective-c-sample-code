//
//  StockHolding.h
//  Stocks
//
//  Created by Jose Miguel Salcido on 8/5/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float) costInDollars;  // purchaseSharePrice * numberOfShares;
- (float) valueInDollars; // currentSharePrice * numberOfShares;

@end
