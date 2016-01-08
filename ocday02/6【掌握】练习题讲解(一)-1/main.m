//
//  main.m
//  6【掌握】练习题讲解(一)-1
//
//  Created by 高明辉 on 16/1/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 设计一个”狗“类
	1> 属性
	* 颜色
	* 速度(单位是m/s) * 性别
	* 体重(单位是kg)
	2> 行为
	* 吃:每吃一次,体重增加0.5kg,输出吃完后的体重
	* 吠(叫):输出所有的属性
	* 跑:每吃一次,体重减少0.5kg,输出速度和跑完后的体重
	* 比较颜色:跟别的狗比较颜色,如果一样,两个值做减法得零,返回NO(零值),不一样,
	做减法得到非零值,返回YES(1) _color - dog->_color
	* 比较速度:跟别的狗比较速度,返回速度差(自己的速度 - 其他狗的速度)
    _speed - dog->_speed
 
 */

//用枚举定义够的颜色

// 用枚举定义狗的性别



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
