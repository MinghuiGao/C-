//
//  Calculator.m
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//


// 导入头文件。
#import "Calculator.h"

@implementation Calculator
// 类方法的实现。
+(int)sum:(int)num1 andNum2:(int) num2{
    return num1 + num2;
}

+(int)minus:(int)num1 andNum2:(int)num2{
    return num1 - num2;
}

+(int)multiply:(int)num1 andNum2:(int)num2{
    return num1 * num2;
}

+(float)devide:(int)num1 andNum2:(int)num2{
    return num1 / (float)num2;
}

@end
