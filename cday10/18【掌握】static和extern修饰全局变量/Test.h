//
//  Test.h
//  cday10
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#ifndef Test_h
#define Test_h

#include <stdio.h>

// 声明一个extern的全局变量，不能省略extern.
// extern修饰的全局变量，在.c文件中赋值，可以在main.c中使用，但是在.c文件中的static变量，不能在.c之外的文件访问。
extern int num;

// 不能在.h文件中声明static的变量。
//static int num2 ;

void fun1();
#endif /* Test_h */
