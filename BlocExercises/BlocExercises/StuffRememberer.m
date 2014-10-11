//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    self.arrayToRemember = arrayToRemember;
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.copiedArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.saveFloat = floatToRemember;
    
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return self.arrayToRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.copiedArray;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.saveFloat;
    //return 0.0f;
}

@end