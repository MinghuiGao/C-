//
//  main.m
//  18-【了解】类的本质
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    类的本质
    1、类类型的变量
        类是一个类型，比如Person是一个类
        类类型的变量 －》 Person类型的变量
        Person *person = [Person new];
        就是实力对象。
    2、类的本质
        在OC中万物皆对象，那么类也是一个对象。
        类对象在程序运行时一旦被加载到内存中就会一直存在，直到程序运行结束。
    3、如何获取类对象
        类对象的类型是：Class
        1、通过类名
            Class clz = [Person class];
        2、通过类的实例对象
            Class clz = [p class];
 
 */
int main(int argc, const char * argv[]) {
    Person *p = [Person new];
    [p sayHi];
    
    // 1、通过类名获取类对象
    Class class = [Person class];
    NSLog(@"Class = %@,class = %p",class,class);
    
    // 2、通过实例对象来获取类对象
    Class class2 = [p class];
    NSLog(@"Class2 = %@,class2 = %p",class2,class2);
    
    return 0;
}
