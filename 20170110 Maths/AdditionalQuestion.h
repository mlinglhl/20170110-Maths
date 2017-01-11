//
//  AdditionalQuestion.h
//  20170110 Maths
//
//  Created by Minhung Ling on 2017-01-10.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionalQuestion : NSObject

@property NSString *question;
@property (nonatomic) NSInteger answer;
@property NSDate *starttime;
@property NSDate *endtime;
- (instancetype)initWithQuestion;
- (NSInteger) answer;
- (NSTimeInterval) answerTime;
@end
