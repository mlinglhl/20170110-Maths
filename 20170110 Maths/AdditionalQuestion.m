//
//  AdditionalQuestion.m
//  20170110 Maths
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "AdditionalQuestion.h"

@implementation AdditionalQuestion

- (instancetype)initWithQuestion
{
    self = [super init];
    if (self) {
        NSInteger firstNumber = arc4random_uniform(90)+10;
        NSInteger secondNumber = arc4random_uniform(90)+10;
        _question = [NSString stringWithFormat:@"What is %ld + %ld? Enter quit to quit.", firstNumber, secondNumber];
        _answer = firstNumber + secondNumber;
        _starttime = [NSDate date];
    }
    return self;
}

- (NSInteger) answer {
    _endtime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    return [self.endtime timeIntervalSinceDate:self.starttime];
}

@end
