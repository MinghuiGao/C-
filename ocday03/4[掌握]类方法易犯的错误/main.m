//
//  main.m
//  4[掌握]类方法易犯的错误
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
/*
    类方法易犯的错误

 
    1、不能在类方法中使用类的实例变量。
    
 
    2、在类方法中，可以调用对象方法。
        1）通过创建一个对象
        2）通过传如一个对象来调用对象方法
    3、在类方法中，调用类方法
        1)可以调用其它的类方法，通过类名调用即可。
        注意，自己调用自己，就会报错！
    4、在对象方法中也可以调用类方法，通过类名调用即可。
        在对象方法中，自己调用自己，也会报错！
 
    5、类方法和对象方法的比较：
        
                           类方法             对象方法
        形式               以＋开头            以－号开头
        调用方式           通过类名调用          通过对象调用
        使用实例变量      不能使用实例变量        可以使用实例变量
 
    6、类方法的优点
        1）在第一次加载类之后就常驻内存，使用效率高
        2）只会在内存中存储一分，节省内存
        3）调用时不用创建对象，可以作为工具方法。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 调用类方法
        int num1 = 10;
        int num2 = 100;
        float avg = [Calculator avg:num1 andNum2:num2 ];
        NSLog(@"avg = %.2f",avg);
        
        Calculator *cal = [Calculator new];
        float avg1 = [Calculator avg:num1 andNum2:num2 andCalculator:cal];
        NSLog(@"avg1 = %.2f",avg1);
    
        float avg2 = [Calculator avg2:num1 andNum2:num2];
        NSLog(@"avg2 = %.2f",avg2);
        
        [Calculator test];
    }
    return 0;
}
