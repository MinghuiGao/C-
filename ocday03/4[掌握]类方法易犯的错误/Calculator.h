//
//  Calculator.h
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

{
    int _avgResult;// 用于存放两个数的平局数。
}

//  对象方法
-(int)sum:(int)num1 andNum2:(int)num2;

// 类方法
+(int)sum2:(int)num1 andNum2:(int)num2;


+(float)avg2:(int)num1 andNum2:(int)num2;



// 求两个数的平局值
+(float)avg:(int)num1 andNum2:(int)num2;

// 在调用的时候，需要穿入一个Calculator对象为参数。
+(float)avg:(int)num1 andNum2:(int)num2 andCalculator: (Calculator *)cal;


// 在类放发中自己调用自己
+(void)test;

@end
