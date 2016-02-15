//
//  main.c
//  4【掌握】typedef定义新的类型
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
int test(int,int);
int main(int argc, const char * argv[]) {
//    1、基本数据类型
    typedef char GM_char;
    GM_char *name;
    name = "gaomh";
    printf("name = %s\n",name);
//    2、数组类型
    typedef char CM_char_array[20];
    CM_char_array array1 = {"hello"};
    CM_char_array  array2 = {'h','e','l','l','\0'};
    printf("array1 = %s\n",array2);
    
//    3、结构体类型
    typedef struct student{
        char *name;
        int age;
    } Student;
    Student s1 = {"mike",23 };
    printf("name = %s,age = %d\n",s1.name,s1.age)   ;
//    4、枚举类型
    // 1、定义完了枚举之后，再起别名
    enum sex {male,female};
    typedef enum sex SexType;
    // 2、定义的同时起别名
    typedef enum sex2{
        male2,
        female2
    } Sextype2;
    
    // 3、给匿名枚举起别名
    typedef enum{
        male3,female3
    }Sextype3;
    Sextype2 st = male3;
//    5、函数指针

    typedef int (*Fun)(int a,int b);
    Fun f1 = test;
    int res = f1(10,20);
    printf("res = %d\n",res);
    return 0;
}
int test(int a, int b){
    return a+b;
}
