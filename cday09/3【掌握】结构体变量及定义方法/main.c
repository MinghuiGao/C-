//
//  main.c
//  3【掌握】结构体变量及定义方法
//
//  Created by 高明辉 on 16/2/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    //    匿名结构体定义结构体变量
    struct {
        int num;
        char *name;
    } boy1,boy2;
    boy1.name = "boy1";
    boy2.num = 1;
    return 0;
}

void test2(){
    //    在定义结构类型的同时说明结构变量
    struct stu{
        int num;
        char *name;
    } stu2,stu3;
    stu2.name = "jordan";
    stu2.num = 2;
}
void test1(){
    //    先定义结构,再说明结构变量
    struct stu{
        int num;
        char *name;
        float score;
    };
    struct stu stu1;
    stu1.name = "mike";
    stu1.num = 1;
    stu1.score = 91.0f;
}
