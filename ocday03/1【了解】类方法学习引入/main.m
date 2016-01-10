//
//  main.m
//  1【了解】类方法学习引入
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    类方法学习
        实现一个类，计算器，实现加 减 乘 除 的功能。
        先来回顾一下对象方法。
        对象方法的调用方法：
            1）创建一个对象，
            2）必须通过对象来调用
            3）以－号开头。
        
 
 
 */

// Caculator 类的声明
@interface Caculator : NSObject

// 行为：
// 加
-(int)sum:(int)num1 andNum2:(int)num2;
// 减
-(int)minus:(int)num1 andNum2:(int)num2;
// 乘
-(int)multiply:(int)num1 andNum2:(int)num2;
// 除
-(float)devide:(int)num1 andNum2:(int)num2;

@end

// 实现 Calculator 类
@implementation Caculator

// 行为：
-(int)sum:(int)num1 andNum2:(int)num2{
    return num1 + num2;
}
-(int)minus:(int)num1 andNum2:(int)num2{
    return num1 - num2;
}
-(int)multiply:(int)num1 andNum2:(int)num2{
    return num1 * num2;
}
-(float)devide:(int)num1 andNum2:(int)num2{
    return num1 / (float)num2;//  为了得到精确结果，做一下类型转换。
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 使用方式
        // 创建一个对象
        Caculator *cal = [Caculator new];
        int res = [cal sum:1 andNum2:3];
        NSLog(@"1+3 = %d",res);
        
        //
    }
    return 0;
}
