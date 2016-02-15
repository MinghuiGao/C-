//
//  main.c
//  13【掌握】指针变量的初始化和引用
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
  指针变量的初始化和引用
    1、指针变量的初始化：
        1）定义的同时初始化
        2）先定义，在赋值
 
        虽然指针是一个整数，但是不能给指针随意赋一个整数值！那是没有意义的。
        *p = &num; 这种写法是错误的！*p 代表p指向的变量的值。
 
        常见的初始化方式：
        int *p = NULL; // NULL 其实就是0.
        或
        int *q = 0;
 
    问题：
        如果定义了指针变量，没有赋初始值，那么该变量中存放的是什么？
            
        定义的指针没有赋初值，该指针被称作野指针，其中存的是垃圾值。指向那块内存，不确定。
        如果使用野指针，会造成访问到不确定的内容。导致运行结果不确定或程序崩溃。
    
    总结：
        在使用指针之前，一定要将其初始化。避免使用野指针！
 */
int main(int argc, const char * argv[]) {
    int num = 10;
    // 定义的同时初始化，将p的初值赋为num的地址。
    int *p1 = &num;
    printf("p1 = %p\n",p1);
    
    // 先定义，再初始化
    int *p2;
    p2 = &num;
    printf("p2 = %p\n",p2);
    // 注意，给指针变量赋值的时候的形式
//    *p2 = &num;// 是错误的！
    
    int *q = NULL;
    printf("NULL = %d,%p\n",NULL,NULL);
    
    int *t;
    printf("t = %p\n",t);
    int *t1;
    printf("t1 = %p\n",t1);
    
    printf("*t1 = %d\n",*t1);// 如果使用野指针，会造成访问到不确定的内容。
    return 0;
}
