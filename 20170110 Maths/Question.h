//
//  AdditionalQuestion.h
//  20170110 Maths
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *starttime;
@property (nonatomic, strong) NSDate *endtime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) BOOL divisionCheck;
- (NSInteger) answer;
- (NSTimeInterval) answerTime;
- (void) generateQuestion;
@end
