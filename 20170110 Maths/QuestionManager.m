//
//  QuestionManager.m
//  20170110 Maths
//
//  Created by Minhung Ling on 2017-01-11.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionalQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
         _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *) timeOutput {
    float totalTime = 0;
    for (AdditionalQuestion *questions in self.questions) {
        totalTime = totalTime + [questions answerTime];
    }
    return [NSString stringWithFormat:@"total time %.1fs. average time %.1fs.", round(totalTime*10)/10, round(totalTime/[self.questions count]*10)/10];
}
@end
