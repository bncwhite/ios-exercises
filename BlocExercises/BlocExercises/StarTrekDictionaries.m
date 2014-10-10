//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    NSMutableArray *favoriteDrinks = [@[] mutableCopy];
    
    for (NSDictionary *dictionary in charactersArray) {
        [favoriteDrinks addObject: dictionary[@"favorite drink"]];
    }
    
    return favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *addQuoteToPicard = [characterDictionary mutableCopy];
    
    [addQuoteToPicard setObject:@"Engage!" forKey:@"quote"];
    
    return addQuoteToPicard;
}

@end
