//
//  main.m
//  6-【理解】self使用总结和注意事项
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
/*
    self使用的总结和注意事项
    self：方法由谁调用，指的就是谁。
    总结：
        self 在对象方法中，指的就是调用当前对象方法的对象。
        self 在类方法中，指的就是调用当前类方法的那个类对象。Class
        self 在对象方法中，饮用实例变量，作用就是能够和重名的局部变量区分开。
    
    注意事项：
        1、注意不能在一个对象方法中通过self来自己调用自己！
            出现栈溢出错误，程序崩溃。stackoverflow。
        2、self在类方法中指的就是调用当前方法的类对象，使用self可以调用其它的类方法，不会调用到同名的对象方法。
            self在对象方法中指的就是调用当前方法的实例对象，使用self可以调用其它的对象方法，不会去调用到类方法。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [Dog new];
        [dog eat];
    }
    return 0;
}
