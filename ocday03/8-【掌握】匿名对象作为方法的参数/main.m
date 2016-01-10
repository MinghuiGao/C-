//
//  main.m
//  8-【掌握】匿名对象作为方法的参数
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
/*
    匿名对象作为方法的参数
 
    使用形式：人溜狗。
        [per walkDog:[Dog new]];
 
    优点：
        代码简洁
 
    缺点：匿名对象只能被正确地使用一次。
        狗遛完了，就跑了...
 
    btw:（顺便说一句）
        [[[Dog alloc]init] run];  等价于  [Dog new];
        new 方法做了分配空间（alloc 方法）和初始化(init方法)两步操作。
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *per = [Person new ];
        [per walkDog:[Dog new]];// 匿名对象作为方法的参数。
        
        [[Dog new] run];
        [[[Dog alloc]init] run];// 相当于[Dog new];
        
    }
    return 0;
}
