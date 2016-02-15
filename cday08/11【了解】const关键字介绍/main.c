//
//  main.c
//  11【了解】const关键字介绍
//
//  Created by 高明辉 on 16/2/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 const关键字的作用：
    1、const是一个类型修饰符，是一个关键字
    2、使用const修饰的变量的值不能改变
 
 
 */
int main(int argc, const char * argv[]) {
    const int num = 10;
//    num = 100;// Read-only ： 只读。
    return 0;
}
