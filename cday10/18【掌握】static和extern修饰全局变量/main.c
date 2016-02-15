//
//  main.c
//  18【掌握】static和extern修饰全局变量
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
#include "Test.h"
extern int num;

int main(int argc, const char * argv[]) {
    fun1();
    fun1();
    printf("num = %d\n",num);
    return 0;
}
