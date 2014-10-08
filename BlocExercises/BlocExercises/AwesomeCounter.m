//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */

    NSMutableString *rangeOfNumbers = [@"" mutableCopy];
    

    
    while (number < otherNumber) {
        NSString *currentNumber = [NSString stringWithFormat:@"%ld", number];
        [rangeOfNumbers appendString: currentNumber];
        number++;
    }
    
    while (number >= otherNumber) {
        NSString *currentNumber = [NSString stringWithFormat:@"%ld", otherNumber];
        [rangeOfNumbers appendString:currentNumber];
        otherNumber++;
    }
    
    while (number == otherNumber) {
        NSString *sameNumber = [NSString stringWithFormat:@"%ld", number];
        [rangeOfNumbers appendString:sameNumber];
        number++;
    }
    
    
    return rangeOfNumbers;
}

@end
