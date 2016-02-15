//
//  main.c
//  4【掌握】结构体变量的初始化和使用
//
//  Created by 高明辉 on 16/2/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
struct stu{
    int num;
    char *name;
};
int main(int argc, const char * argv[]) {
//    先定义再初始化

    struct stu stu1;
    stu1.name = "gaomh";
    stu1.num = 1;
    
//    定义的同时初始化
    struct stu stu2 = {1,"gaomh"};
    // 初始化部分结构体成员变量
    struct stu stu4 = {1};// 必须按照顺序来初始化，不能省略千面的，初始化后面的。
    struct stu stu3 = {.name = "gaomh",.num = 3};
    return 0;
}
