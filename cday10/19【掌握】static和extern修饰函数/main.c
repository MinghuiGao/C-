//
//  main.c
//  19【掌握】static和extern修饰函数
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
#include "Fun.h"
/*
 extern 和 static  修饰函数
 
 */
int main(int argc, const char * argv[]) {
    fun();
    fun1();
//    fun3();// 编译错误，fun3()不能在Fun.c外部使用。
    return 0;
}
