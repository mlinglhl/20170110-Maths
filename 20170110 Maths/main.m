//
//  main.m
//  20170110 Maths
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionalQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    
    //
    //  main.m
    //  Jan 9 Word Effects
    //
    //  Created by Minhung Ling on 2017-01-09.
    //  Copyright © 2017 Minhung Ling. All rights reserved.
    //
    QuestionManager *manager = [[QuestionManager alloc] init];
    BOOL gameOn = YES;
    ScoreKeeper *score = [[ScoreKeeper alloc] init];
    while (gameOn == YES) {
        AdditionalQuestion *question1 = [[AdditionalQuestion alloc] initWithQuestion];
        [manager.questions addObject:question1];
        NSLog(@"%@", question1.question);
        NSString *inputString = [InputHandler handleUserInput];
        
        if ([inputString isEqualToString:@"quit"]) {
            gameOn = NO;
            continue;
        }
        
        NSInteger inputInteger = [inputString intValue];
        if (inputInteger == question1.answer) {
            NSLog(@"Correct!");
            score.right++;
        }
        else {
            NSLog (@"Wrong! The answer is %ld.", (long)question1.answer);
            score.wrong++;
        }
        [score scoreTotal];
        NSLog(@"%@", [manager timeOutput]);
    }
    return 0;
}
