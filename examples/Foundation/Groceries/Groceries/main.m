//
//  main.m
//  Groceries
//
//  Created by Jose Miguel Salcido on 8/4/12.
//  Copyright (c) 2012 Jose Salcido. All rights reserved.
//

#import <Foundation/Foundation.h>


void groceriesChallenge();
void properNameChallenge();
void regularWordsChallenge();
void printTwoAdjacentsA(NSArray *array);
void printEquals(NSString *word, NSString *name);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //groceriesChallenge();
        //properNameChallenge();
        regularWordsChallenge();
    }
    return 0;
}

void regularWordsChallenge()
{
    NSString *wordsString =
    [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                              encoding:NSUTF8StringEncoding
                                 error:NULL];
    NSArray *regularWords = [wordsString componentsSeparatedByString:@"\n"];
    
    NSString *nameString =
    [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                              encoding:NSUTF8StringEncoding
                                 error:NULL];
    NSArray *names = [nameString componentsSeparatedByString:@"\n"];
    for(NSString *word in regularWords) {
        for(NSString *name in names) {
            printEquals(word, name);
        }
    }
}

void printEquals(NSString *word, NSString *name)
{
    if([word caseInsensitiveCompare:name] == NSOrderedSame) {
        NSLog(@"%@ and %@ are the same", word, name);
    } else {
        // Nothing :*
    }
}

void properNameChallenge()
{
    NSString *nameString =
    [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                              encoding:NSUTF8StringEncoding
                                 error:NULL];
    NSArray *names = [nameString componentsSeparatedByString:@"\n"];
    printTwoAdjacentsA(names);
}

void printTwoAdjacentsA(NSArray *array)
{
    NSRange range;
    for (NSString *string in array) {
        range = [string rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
        if (range.location != NSNotFound) {
            NSLog(@"%@", string);
        }
    }
}

void groceriesChallenge()
{
    NSMutableArray *groceriesList = [NSMutableArray array];
    
    NSString *leche = @"leche";
    NSString *tostadas = @"tostadas";
    NSString *jamon = @"jamon";
    NSString *agua = @"agua";
    NSString *fuckyou = @"nose que mas";
    
    [groceriesList addObject:leche];
    [groceriesList addObject:tostadas];
    [groceriesList addObject:jamon];
    [groceriesList addObject:agua];
    [groceriesList addObject:fuckyou];
    
    NSLog(@"Lista de compras:");
    for (NSString *object in groceriesList) {
        NSLog(@"\t- %@", object);
    }
}