//
//  NSTimer+XW.m
//  test
//
//  Created by Admin on 2019/11/7.
//  Copyright © 2019 xiaowei. All rights reserved.
//

#import "NSTimer+XW.h"

@implementation NSTimer (XW)

+ (NSTimer *)xw_scheduledTimerWithTimeInterval:(NSTimeInterval)interVal
                                         block:(void(^)(void))block
                                       repeats:(BOOL)repeats
{
    return [self scheduledTimerWithTimeInterval:interVal target:self selector:@selector(xw_blockInvoke:) userInfo:[block copy] repeats:repeats];
};

+ (void)xw_blockInvoke:(NSTimer *)timer
{
    void (^block) (void) = timer.userInfo;
    if (block)
    {
        block();
    }
}

@end
