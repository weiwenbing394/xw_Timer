//
//  NSTimer+XW.h
//  test
//
//  Created by Admin on 2019/11/7.
//  Copyright © 2019 xiaowei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTimer (XW)

+ (NSTimer *)xw_scheduledTimerWithTimeInterval:(NSTimeInterval)interVal
                                         block:(void(^)(void))block
                                       repeats:(BOOL)repeats;

@end

NS_ASSUME_NONNULL_END
