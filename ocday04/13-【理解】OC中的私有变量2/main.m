//
//  main.m
//  13-【理解】OC中的私有变量2
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    OC中的私有变量
    1、可以在@interface中使用@private来修饰实例变量
        子类可以继承，但是不能访问。在类的外部，也不能访问。
    2、@implementation中声明变量是私有变量
        只能在.m文件中使用，如果要进行访问，可以通过相关的set 和get方法，但是，set和get方法必须要在.h文件中声明。
        注意：
            在类的外部不能访问，也没有提示。
            在子类中也不能访问，也没有提示。
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p->_name = @"zrt";
//        p->_age = 1;
        [p setAge:10];
        [p showInfo];
        
    }
    return 0;
}
