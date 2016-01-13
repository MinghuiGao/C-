//
//  main.m
//  11-【掌握】实例变量修饰符介绍
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "BigCar.h"
/*
    实例变量修饰符：
    主要作用：修饰实例变量的使用范围
    修饰变量的作用域：从定义的位置开始，直到遇到下一个其它类型的修饰符为止。如果没有，那么直到大括号结束。
    1、@public 公共的，范围：语法正确的情况下，外部可以访问。
    2、@protected 受保护的，是缺省的修饰符。范围：当前类和派生的子类都可以使用。
    3、@private  私有的。范围：只能在当前类中使用。
    
    在类的外部：
        @public     可以访问；
        @protected  不能访问
        @private    不能访问
 
    对子类的影响：
        1）@public    可以在子类中使用
        2）@protected 可以在子类中使用
        3）@private   不能在子类中使用，但是能够被子类继承。
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        //
        car->_name = @"car";
//        car->_speed = 100;
//        car->_wheels = 4;
        
        BigCar *bc = [BigCar new];
        [bc showInfo];
    }
    return 0;
}
