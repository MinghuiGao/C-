//
//  Person.m
//  面向对象
//
//  Created by 曾静 on 16/1/14.
//  Copyright © 2016年 zj. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString *)name{
    _name = name;
}
-(void)setDog:(Dog *)dog{
    _dog = dog;
}
-(NSString *)name{
    return _name;
}
-(Dog *)dog{
    return _dog;
}
-(void)liuDog:(Ball *)ball{
    NSLog(@"%@带着他家的%@溜达溜达",_name,[_dog name]);
    [_dog run:ball];
}

@end
