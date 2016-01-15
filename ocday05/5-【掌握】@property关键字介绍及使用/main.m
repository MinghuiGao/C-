//
//  main.m
//  5-【掌握】@property关键字介绍及使用
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 ；. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    @property 关键字的使用，
    1、为什么要是用@property？
        传统的手动去声明属性和编写getset方法费时费力。
        使用@property可以告诉编译器自动生成属性的getter和setter方法的声明。
        @property是一条编译器指令。
 
    2、使用@property来自动生成getter和setter方法的声明。Xcode4.4之前支持。
        使用格式：
             @property 类型 去掉下划线的变量名（或者叫方法名）。
        
        作用：
            告诉编译器自动生成相应的getter和setter方法。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [Person new];
        person.name = @"东方不败";
        person.age = 100;
        person.height = 1.8f;
        person.weight = 130.0f;
        person.sex = 1;// 可以再外部看到方法的声明，可以调用，但是没有实现，注意不会报错！
        NSLog(@"%@, 年龄： %d , 身高 ：%.2f ,体重 %.2f",person.name,person.age,person.height,person.weight);// 注意如果前面有中文的话，Xcode就不再提示了。
    
    
    }
    return 0;
}
