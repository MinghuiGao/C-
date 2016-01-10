//
//  Calculator.h
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

// 类的声明
@interface Calculator : NSObject

// 行为
+(int)sum:(int)num1 andNum2:(int) num2;

+(int)minus:(int)num1 andNum2:(int)num2;

+(int)multiply:(int)num1 andNum2:(int)num2;

+(float)devide:(int)num1 andNum2:(int)num2;

@end
