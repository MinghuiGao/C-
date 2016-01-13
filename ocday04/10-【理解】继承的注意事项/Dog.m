//
//  Dog.m
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Dog.h"
//static int age;
int age;// 全局变量

@implementation Dog
{
    int _weight;// 相当于私有属性
}
-(void)setWeight:(int)weight{
    _weight = weight;
}
-(int)weight{
    return _weight;
}

-(void)eat{
//    _age = @"100";
//    age++;
//    NSLog(@"%d",age);
//    age++;
//    NSLog(@"dog is eating ,age = %@",_age);
    [self setWeight:100];
    _weight = 1000;// 也可以直接使用。
    NSLog(@"%d",[self weight]);
    
}

//-(void)shout{
//    NSLog(@"狗在叫");
//}
@end
