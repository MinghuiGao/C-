//
//  Ball.m
//  面向对象
//
//  Created by 曾静 on 16/1/14.
//  Copyright © 2016年 zj. All rights reserved.
//

#import "Ball.h"

@implementation Ball
-(void)setName:(NSString *)name{
    _name = name;
}
-(void)setColor:(NSString *)color{
    _color = color;
}
-(NSString *)name{
    return _name;
}
-(NSString *)color{
    return  _color;
}
@end
