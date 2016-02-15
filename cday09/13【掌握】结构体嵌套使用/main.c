//
//  main.c
//  13【掌握】结构体嵌套使用
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    //潜逃定义结构体。
    struct date {
        int year;
        int month;
        int day;
    };
    struct student {
        char *name;
        int age;
        // 生日
        struct date birthday;
    };
    
    struct date birthday = {1991,1,1};
    struct student stu = {"fengjie",23,birthday };
    printf("student : name = %s, age = %d,brithday : %d-%d-%d\n",stu.name,stu.age,stu.birthday.year,stu.birthday.month,stu.birthday.day);
    
    // 前套定义指向自己的指针，通常用于复杂的数据结构，如链表，树的节点等。
    struct person {
        char *name;
        int age;
        struct person *son;
    };
    
    struct person son = {"son",18,NULL};
    struct person father = {"father",40,&son};
    
    // 访问指向自己的结构体指针
    printf("father : name = %s, age = %d,son : name = %s,age = %d\n",father.name,father.age,father.son->name,father.son->age);

    printf("father : name = %s, age = %d,son : name = %s,age = %d\n",father.name,father.age,father.son->name,father.son->age);
    
    return 0;
}
