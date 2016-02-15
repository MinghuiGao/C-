//
//  Fun.c
//  cday10
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include "Fun.h"

void fun(){
    printf("fun\n");
}

extern void fun1(){
    printf("fun1\n");
    fun3();
}
// static类型的函数也需要在。h中声明。
static void fun3(){
    printf("static fun3\n");
}