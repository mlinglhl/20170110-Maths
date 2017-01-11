//
//  QuestionFactory.h
//  20170110 Maths
//
//  Created by Minhung Ling on 2017-01-11.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray *questionSubClassNames;

- (Question *) generateRandomQuestion;
@end
