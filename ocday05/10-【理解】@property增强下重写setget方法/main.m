//
//  main.m
//  10-【理解】@property增强下重写setget方法
//
//  Created by 高明辉 on 16/1/16.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    OC类中声明属性的终极解决方案是：
    @property 类型 属性名；
    
    能够自动生成getter和setter方法。
    但是不能过滤外部的非法值。
    如何过滤非法值呢？
    可以通过重写setter方法。
    
    注意：
        如果要重写getter或着setter，那么需要在属性声明的时候加上一个nonatomic 修饰。
        @property (nonatomic) int age;
    
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p.age = -18;
        NSLog(@"age = %d",p.age);
        
    }
    return 0;
}
