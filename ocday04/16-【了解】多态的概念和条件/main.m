//
//  main.m
//  16-【了解】多态的概念和条件
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "American.h"
#import "Japanese.h"
#import "Korean.h"

/*
    多态的概念和条件
    1、什么是多态？
        多态就是同一个行为对于不同事物有不同的实现。
        再简单一点就是父类的一个方法在不同的子类中有不同的实现。
    2、多态的条件：
        1）得有继承关系
        2）得有方法的重写
        3）用父类的变量来接收子类的对象
    3、多态的好处：
        把不同的子类对象都当作父类来看，可以屏蔽不同子类对象之间的差异，写出通用的代码，做出通用的编程，以适应需求的不断变化。
    4、多态的原理
        OC是一门动态语言，能使程序直到执行的时候才需要确定对象的类型。
    5、注意点：
        可以将接受子类对象的父类指针强转成子类后调用子类特有的方法。
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p sayHi];
        // 多态的代码体现：
        Person *american = [American new];
        [american sayHi];
        [(American *)american playBasketBall];
        
        Person *jap = [Japanese new];
        
        
        
    }
    return 0;
}
