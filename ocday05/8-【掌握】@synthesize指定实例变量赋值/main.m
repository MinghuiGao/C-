//
//  main.m
//  8-【掌握】@synthesize指定实例变量赋值
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    @synthesize指定实例变量
 
    默认情况下，@synthesize会在生成实现方法之前在@implementation中生成私有属性。 
    如果我们想使用.h中声明的实例变量，可以给@synthesize指定实例变量。
 
    指定方法：
        @synthesize 名称 ＝ 实例变量名；
        @synthesize name = _name;
        一旦指定了实例变量值，那么就不回自动创建私有属性了。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p.name = @"张三丰";
        p.age = 101;
        p.height = 1.8f;
        
        NSLog(@"name : %@, age = %d,height = %.2f",p.name,p.age,p.height);
        
    }
    return 0;
}
