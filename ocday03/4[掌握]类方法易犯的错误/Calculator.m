//
//  Calculator.m
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
//  声明对象方法
-(int)sum:(int)num1 andNum2:(int)num2{
    return num1 + num2;
}



// 类方法
+(int)sum2:(int)num1 andNum2:(int)num2{
    return num1 + num2;
}

+(float)avg2:(int)num1 andNum2:(int)num2{
    // 调用其它的类方法
    float res = [Calculator sum2:num1 andNum2:num2] / 2.0f;
//    float res = [Calculator avg2:num1 andNum2:num2];// 注意，自己调用自己，会报错！stackoverflow。
    return res;
}

+(float)avg:(int)num1 andNum2:(int)num2{
//    _avgResult = (num1 + num2)/2.0f; // 不能在类方法中使用类的实例变量。
    // 在类的类方法中可以使用对象方法，只要有一个对象即可。
    Calculator *cal = [Calculator new];
    float res = [cal sum:num1 andNum2:num2]/2.0f;
    return res;
}


+(float)avg:(int)num1 andNum2:(int)num2 andCalculator: (Calculator *)cal{
    // 通过传如一个对象来调用对象方法
    float res = [cal sum:num1 andNum2:num2] / 2.0f;
    return res;
}

@end
