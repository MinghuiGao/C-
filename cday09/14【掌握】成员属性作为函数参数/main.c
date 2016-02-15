//
//  main.c
//  14【掌握】成员属性作为函数参数
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

struct student {
    char *name;
    int age;
};
void fun1(char *name,int age){
    printf("name = %s, age = %d\n",name,age);
}

void fun2(struct student stu){
    printf("name = %s,age = %d\n",stu.name,stu.age);
}

void fun3(struct student *stu){
    printf("name = %s,age = %d\n",stu->name,stu->age);
}
int main(int argc, const char * argv[]) {
    
    struct student student1 = {"凤姐",23};
    // 结构体成员作为函数参数。
    fun1(student1.name, student1.age);
    
    // 结构体变量作为函数的参数
    fun2(student1);
    
    // 结构体指针作为函数参数
    fun3(&student1);
    return 0;
}
