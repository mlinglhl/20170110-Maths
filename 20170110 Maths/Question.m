//
//  AdditionalQuestion.m
//  20170110 Maths
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(91)+10;
        _rightValue = arc4random_uniform(91)+10;
        _divisionCheck = NO;
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

- (void) generateQuestion {
    
}

@end
