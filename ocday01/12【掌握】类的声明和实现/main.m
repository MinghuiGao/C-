//
//  main.m
//  12【掌握】类的声明和实现
//
//  Created by 高明辉 on 16/1/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

/*
    类的声明和实现
    1、如何声明一个类？
        @interface \ @end(标示声明 结束) 用这两个关键字来声明一个类。
        声明的格式：
        @interface 类型 : NSObject
        {
            //声明类的属性（成员变量）或者叫做实力变量。
            // 声明格式：数据类型 变量名；
                如：int _age;
            // 编程习惯，类的实力变量名通畅以下划线开头。
        }
        // 声明类的行为（在@interface 和 @end 之间，并且在大括号外面）
        @end
    2、如何实现一个类,
        类的实现的作用：  实现 类声明中的行为。
        实现一个类：@implementation 关键字。
        格式：
        @implementation 类名
 
        @end
        注意：
            如果类的声明中没有行为的声明，那么类的实现中可以为空。但是实现的格式，必须要有。
 
 
 */
#import <Foundation/Foundation.h>
@interface Car : NSObject
{
    NSString *_color;// 声明了一个NSString类型的实力变量，名为_color。
    int speed;
    NSString *_brand;
}

@end

// 实现Car类
@implementation Car

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
