//
//  main.c
//  17【掌握】指针的应用场景
//
//  Created by 高明辉 on 15/12/28.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

void fun1(int *a){
    // 操作的是主调函数中穿入的变量的地址。
    printf("*a = %d\n",*a);
}


void fun2(int a,int b, int *add,int *jian){
    *add = a - b ;
    *jian = a + b ;
}

int main(int argc, const char * argv[]) {
    /*
        指针的应用场景
            1、间接使用主调函数中的变量
            2、实现被调函数的多个返回值
     
     */
    // 通过使用地址传递使用主调函数中的变量
    int a = 11;
    
    fun1(&a);// 穿入变量a的地址
    
    // 通过指针返回多个值
    int a1 = 10;
    int b1 = 20;
    int add = 1;
    int jian = 2;
    fun2(a1, b1, &add, &jian);
    
    // 通过地址传递，可以从被调函数中返回多个值。
    printf("add = %d, jian = %d\n",add,jian);
    
    
    return 0;
}
