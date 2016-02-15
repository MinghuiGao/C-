//
//  main.c
//  3【掌握】typedef关键字介绍
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 typedef 关键字的介绍
    typedef 关键字 允许用户给自定义的数据类型起别名。
    一般形式：
    typedef 数据类型  别名;
 */
int main(int argc, const char * argv[]) {
    typedef int INT;
    int a  = 10;
    INT b = a;
    
    
    struct student {
        char *name ;
        int age;
    };
    typedef struct student Student;
    struct student stu1;
    Student stu2;
    stu2.name = "mike";
    stu2.age = 23;
    printf("name = %s, age = %d\n",stu2.name,stu2.age  );
    return 0;
}
