//
//  ScoreKeeper.m
//  20170110 Maths
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void) scoreTotal {
    float percent = (float)self.right/(self.right+self.wrong)*100;
    NSLog(@"score: %ld right, %ld wrong --- %.0f%%", self.right, self.wrong, percent);
}

@end
