//
//  Calculator.h
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

// 声明类
@interface Calulator : NSObject
// 声明类的实力变量
{
    int _result;// 保存计算结果。
}
// 声明类方法
+(int)sum:(int)num1  andNum2:(int)num2;

// 声明一个同名的对象方法
-(int)sum:(int)num1  andNum2:(int)num2;

+(int)sum2:(int)num1 andNum2:(int)num2 andObject:(Calulator *)cal;

@end