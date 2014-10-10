//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    int doubled = [number intValue] * 2;
    
    NSNumber *doubledNumber = [NSNumber numberWithInt:doubled];
    
    return doubledNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableArray *numberedArray = [@[] mutableCopy];
    
    int valueA;
    int valueB;
    
    if (number < otherNumber) {
        valueA = (int)number;
        valueB = (int)otherNumber;
    } else {
        valueA = (int)otherNumber;
        valueB = (int)number;
    }
    
    while (valueA <= valueB) {
        NSNumber *number = [NSNumber numberWithInt:valueA];
        [numberedArray addObject:number];
        valueA++;
    }
    
    return numberedArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    NSMutableArray *sortedArray = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *findLowestNumber = [[NSSortDescriptor alloc] initWithKey:nil ascending:true];
    [sortedArray sortUsingDescriptors:@[findLowestNumber]];
    
    NSNumber *lowestNumber = sortedArray[0];
    NSInteger lowest = [lowestNumber integerValue];
    
    return lowest;
}

@end
