//
//  main.m
//  2【掌握】类方法概述及使用
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
/*
    类方法概述及使用
    1、什么是类方法
        以＋开头的方法
    2、类方法的声明格式
        +(返回值类型)方法名:(参数类型)参数名称;
        实现和对象方法基本一样，拷贝过去，然后把；改成｛｝就可以了。
    3、类方法的调用：
        通过类名调用。
        [类名 方法名];
 
    4、将计算器的计算方法改为类方法实现，这样就可以直接通过类名来调用，就不需要创建对象了。
        
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 调用类方法
        int num1 = 10;
        int num2 = 5;
        int res = [Calculator sum:num1 andNum2:num2];
        // 调用类方法啊的时候，并没有创建对象。直接通过类名来调用。
        NSLog(@"%d + %d = %d",num1,num2,res);
        
        Calculator *cal = [Calculator new ];
//        [cal sum:num1 andNum2:num2];
        
    }
    return 0;
}
