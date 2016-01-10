//
//  main.m
//  7-【理解】匿名对象的概念及使用
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
/*
    匿名对象的概念及使用
    1、什么是你名对象
        匿名就是隐藏名字，没有名字。匿名对象就是隐藏名字，或者没有名字的对象。
        创建完了之后，没有使用一个变量来接收对象的地址。
        如：[Dog new]；
 
    2、匿名对象如何访问成员变量
        正常情况下，可以使用对象名来访问成员变量
        匿名对象，直接使用创建完的对象来访问实例变量。
        如：[Dog new]->_name = @"旺财";
 
    3、匿名对象如何调用对象方法
        通过创建的匿名对象来调用对象方法。
        如： [[Dog new] run];
 
 */


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个Person对象
        Person *p = [Person new ];
        // 创建一个Dog对象。
        Dog *dog = [Dog new];
        dog->_name = @"bigYelloDog";
        [p walkDog:dog];
        // 使用了一个Dog类型的变量来接收[Dog new]返回的对象地址。
        // 那我们可以直接使用这个地址吗？可以
        
        [Dog new]->_name = @"旺财";// 注意，匿名对象只能使用一次，无法再次使用同一个匿名对象。
        [p walkDog:[Dog new]];// 穿入了一个匿名对象
        

        // 创建一个Dog类的匿名对象
        [[Dog new] run];
        
    }
    return 0;
}
