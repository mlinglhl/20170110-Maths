//
//  DivisionQuestion.m
//  20170110 Maths
//
//  Created by Minhung Ling on 2017-01-11.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    super.question = [NSString stringWithFormat:@"What is %ld / %ld? Enter quit to quit.", self.leftValue, self.rightValue];
    super.divisionCheck = YES;
    super.answer = self.leftValue / self.rightValue;
}
@end
