//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *favCheeseStatement = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favCheeseStatement;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSRange suffixRange;
    
    if (suffixRange.location != NSNotFound) {
        [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    }
    
    NSString *correctString = [cheeseName stringByReplacingCharactersInRange:suffixRange withString:@""];
    
    return correctString;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *cheeseAmount = [NSString stringWithFormat:@"%lu cheese", cheeseCount];
        return cheeseAmount;
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *cheeseAmount = [NSString stringWithFormat:@"%lu cheeses", cheeseCount];
        return cheeseAmount;
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
