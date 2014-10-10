//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    
    NSArray *starTrekCharactersArray = [characterString componentsSeparatedByString:@";"];
    
    return starTrekCharactersArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSString *starTrekCharactersString = [characterArray componentsJoinedByString:@";"];
    
    return starTrekCharactersString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *characterArraySorted = [characterArray mutableCopy];
    
    NSSortDescriptor *sortedStarTrekCharacters = [[NSSortDescriptor alloc] initWithKey:nil ascending:true selector:@selector(localizedCaseInsensitiveCompare:)];
    
    [characterArraySorted sortUsingDescriptors:@[sortedStarTrekCharacters]];
    
    return characterArraySorted;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *worfMayBeAWOL = [characterArray mutableCopy];
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    
    [worfMayBeAWOL filterUsingPredicate:containsWorf];
    
    if (worfMayBeAWOL.count > 0) {
        return YES;
    }
    
    
    return NO;
}

@end
