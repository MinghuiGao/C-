//
//  Calculator.m
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Calculator.h"

// 实现类
@implementation Calulator

// 实现类方法
+(int)sum:(int)num1  andNum2:(int)num2{
    //    _result = num1 + num2; // 在类方法中不能使用类的实例变量。
    // 想要调用对象方法，必须要先有对象。
    
    return num1 + num2;
}

+(int)sum2:(int)num1 andNum2:(int)num2 andObject:(Calulator *)cal{
    // 通过传如的参数对象来调用对象方法。
    return [cal sum:num1 andNum2:num2];
}

// 实现对象方法
-(int)sum:(int)num1  andNum2:(int)num2{
    // 在对象方法中，可以使用类的实力变量
    //    _result = num1 + num2;
    
    _result = [Calulator sum:num1 andNum2:num2];
    return _result;
}

@end