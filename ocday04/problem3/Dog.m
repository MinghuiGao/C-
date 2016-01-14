//
//  Dog.m
//  面向对象
//
//  Created by 曾静 on 16/1/14.
//  Copyright © 2016年 zj. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)setName:(NSString *)name{
    _name =name;
}
-(NSString *)name{
    return _name;
}
-(void)run:(Ball*)ball{
    NSLog(@"狗在跑");
    [self playBall:ball];
}
-(void)playBall:(Ball*)ball{
    NSLog(@"狗在玩%@的%@球",[ball color],[ball name]);
}
@end
