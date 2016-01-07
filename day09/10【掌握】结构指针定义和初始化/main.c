//
//  main.c
//  10【掌握】结构指针定义和初始化
//
//  Created by 高明辉 on 16/1/7.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
        结构体指针的定义和使用
        1、什么是结构体指针？
            指向结构体的指针。
        2、定义格式：
            struct Person *s = &son;
            注意：struct Person类型的结构体指针指向相同类型的结构体变量！
        3、结构体指针的使用场景
            当结构体自己嵌套自己的时候
        4、访问结构体中的成员变量
             1）通过结构体变量来访问成员变量。
                格式：结构体变量名.成员变量名;
                如： father.name;
            2) 通过结构体指针(存放的是结构体的地址)来反问成员变量。
                格式：(father.son)->name;
                    (*(father.son)).name;
            可以通过指针直接访问，也可以通过*引用指针所指向的变量，再通过变量来引用。
     
     */
    
    
//    // 定义一个person的结构体
//    struct Person {
//        char *name;
//        int age;
//        
//    };
//    struct Person zhangsan ;
//    zhangsan.name = "mike";
//    zhangsan.age = 40;
//    
//    struct Person son;
//    son.name = "mike2";
//    son.age = 10;
//    
//    // 指向结构体的指针
//    struct Person *s = &son;
    
    
    
        // 定义一个person的结构体
    struct Person {
        char *name;
        int age;
        // 给Person类内部嵌套一个儿子
//            struct Person son;// 如果直接写成成员变量，那么报错，因为类型还没有定义完成。
        // 解决方法：使用结构体指针。
        struct Person *son;
    };
    
        // 先定义爸爸
    struct Person father;
    father.name = "林志颖";
    father.age = 40;
    father.son = NULL;
    // 在定义一个儿子
    struct Person son;
    son.name = "kimi";
    son.age  = 8;
    son.son = NULL;// 即使这里不手动赋值为NULL，也会默认初始化为NULL。因为结构体默认基础数据类型初始化为0，指针初始化为NULL。
    // 把儿子赋值给爸爸
    father.son = &son;// 注意，father.son 是一个指针变量，因此要接收地址值。
    
    
    // 访问结构体指针中的变量。
    printf("father name : %s,age: %d \n son name: %s,age : %d\n",father.name,father.age,(father.son)->name,(*(father.son)).age);
    
    
    
    return 0;
}
