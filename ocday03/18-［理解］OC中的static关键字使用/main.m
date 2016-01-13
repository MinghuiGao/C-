//
//  main.m
//  18-［理解］OC中的static关键字使用
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    static
        在C语言中：
            1、修全局变量，只能在当前文件使用
            2、修饰局部变量，延长局部变量的生命周期，而且只能被声明一次。
            3、修饰函数，只能在当前文件中使用。
 
    在OC中：
        1、不能干什么：
            static不能修饰实例变量
            不能用static修饰对象方法
        2、能干什么
            1）如果在。h文件中定义全局变量，必须使用static。且只能在该类中使用。
            2) 修饰局部变量，和C语言中相同，延长了变量的生命周期。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        printf("hello \
//               world\n");
//        //
//        printf("hello ""world");
        Person *p = [Person new];
        [p sayHello];
        [p sayHello];
        [p sayHello];
        [p sayHello];
        [p sayHello];
        
        NSLog(@"num2 = %d ",num);
        
    }
    return 0;
}
