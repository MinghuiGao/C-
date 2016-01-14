//
//  main.m
//  21-【理解】SEL类型
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
/*
    SEL类型
    1、什么是SEL类型
 
    2、类中方法存储的原理：
        1）类里面的方法都是被转换成SEL变量进行存储的。
        2）当使用一个对象去调用方法的时候，系统会把这个方法转换成SEL，去类代码中寻找方法。
 
    3、_cmd ： 代表当前的方法。
    
    4、调用方法的方法：
        1）使用对象或者类去调用
        2）手动将方法转化成SEL，然后再进行调用。
            转换方式：@selector(方法名).返回一个SEL对象。
         
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dog *dog = [Dog new];
        // 通过对象来调用方法。传统做法
//        [dog run];
        
        // 发送一个SEL类型的selector
        // 1、手动转化出一个selector
        SEL sel = @selector(run2 );// Dog类中没有run2这个方法，因此报错： 发送了一个无法识别的selector。
        [dog performSelector:sel];
        
    }
    return 0;
}
