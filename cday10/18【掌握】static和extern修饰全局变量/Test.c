//
//  Test.c
//  cday10
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include "Test.h"

// a智能在test.c文件中使用
static int a = 10;
// 
int num = 1;
void fun1(){
    a++;
    printf("a = %d\n",a);
    num ++;
    printf("num = %d\n",num);
}