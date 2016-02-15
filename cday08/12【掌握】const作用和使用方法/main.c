//
//  main.c
//  12【掌握】const作用和使用方法
//
//  Created by 高明辉 on 16/2/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 const 的使用方法：
 修饰一般常量
 
 定义常数组
 修饰函数的常参数
 修饰函数的返回值
 修饰常指针
 */
//    修饰函数的常参数
void fun(const int num){
    // 形参 num 不能被修改。
    printf("num = %d\n",num);
}

//    修饰函数的返回值
const int fun2(int num){
    return 10+num;
}
int main(int argc, const char * argv[]) {
//    修饰一般常量
    const int num = 10;
    int const num2 = 11;
//    num2 = 111;//  只读
//    定义常数组
    const int nums[] = {1,2,3,4,5};
    int const nums2[4];

    
//    修饰常指针
    int num3 = 1000;
    int num4 = 50;
    
    const int *p1;
    p1 = &num3;
//    *p1 = 100;// 不能通过p1来间接修改变量的值。
    
    num3 = 100;
    printf("p1 = %d\n",*p1);
    p1 = &num4;
    printf("p1 = %d\n",*p1);
    
    

    int const *p2;
    p2 = &num3;
    num3 = 1000;
    p2 = &num4;
//    *p2 = 100;

    int *const p3 = &num3;
//    p3 = &num3;
    *p3 = 1999;
    
    const int *const p4 = &num3;
//    *p4 = 199;
//    p4 = &num4;
    
    return 0;
}
