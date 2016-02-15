//
//  main.c
//  10【掌握】结构指针定义和初始化
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 什么是结构体指针
    当一个指针指向一个结构体时，这个指针就是一个结构体指针。
    注意：
        结构体指针变量中的值，是结构体的首地址。
 
 定义和初始化结构体指针
 
 */
int main(int argc, const char * argv[]) {
    struct stu{
        char *name;
        int age;
    };
    struct stu *boy;
    struct stu student = {
        "mike",
        18
    };
    boy = &student;
    
    struct stu * girl = &student;
    // 通过结构体指针访问结构体成员
    printf("boy name = %s\n",boy->name) ;
    printf("boy age = %d\n",(*boy).age);// 注意（）不能省略，因为.的优先级高于＊。
    
    return 0;
}
