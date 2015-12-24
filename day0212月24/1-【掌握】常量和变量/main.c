//
//  main.c
//  1-【掌握】常量和变量
//
//  Created by 高明辉 on 15/12/24.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
        常量：
            在程序运行过程中，值不会改变的量。
        常量的类型：有什么样的数据类型，就有什么类型的常量。
        
        其中字符型常量中的转义字符是指：使用\来转变原来字符的含义。
        'n'-> 加了一个\之后，'\n'表示一个换行符。
     
        变量：
            在程序运行过程中，值可以改变的量。
            变量用来存放数据的。
        定义变量的一般形式：
            类型说明符 变量名；
            类型说明符：是用来说明变量能存放的数据的类型。
            变量名： 是让我们来使用变量的。
            
        变量的赋值
            1、先定义，再进行赋值。
            2、定义的同时，进行赋值。
     
        注意：没有初始化的变量，不能使用。
     
        变量的属性：
            int a = 10;
            变量名： a
            变量类型：int
            变量的值：10
            变量的地址：变量在内存中存放的位置编号。
     
        变量类型的作用：
            1、方便变量的组织
                知道变量存储的内存大小，知道变量的值的取值范围
            2、规范变量的使用
                知道不同类型的变量可参与的运算。
     */
    
    1;// 整型常量
    2.3; // 实型常量  （double类型的）
    2.3f;// float类型的常量
    'a'; // char类型（字符型）常量
    
    
    printf("hello world!\n");
    printf("hello world!\n");
    
    // 定义一个int类型的变量
    int a;
    
    // 定义一个char类型的变量，变量名叫做c
    char c;
    // 定义一个float类型的变量，变量叫做f。
    float f;
    
    
    //1、先定义，再进行赋值。
    // 定义一个double的变量
    double d;
    // 把10.1这个数据赋给d这个变量。
    d = 10.1;
    
    //2、定义的同时，进行赋值。
    // 定义了一个int类型变量的同时，给这个变量赋了一个初始值10.这种方式也叫做变量的初始化。
    int num = 10;
    
    // 没有初始化的变量，不要去用，因为没初始化，变量中存的是垃圾值（随机的值）。
    int n1;
    int n2;
    int n3;
    int n4;
    int n5;
    int n6;
    int n7;
    int n8;
    int n9;
    int n0;
    printf("%d\n",n1);
    printf("%d\n",n2);
    printf("%d\n",n3);
    printf("%d\n",n4);
    printf("%d\n",n5);
    printf("%d\n",n6);
    printf("%d\n",n7);
    printf("%d\n",n8);
    printf("%d\n",n9);
    printf("%d\n",n0);
    
    // 变量的地址
    int num2 = 10;
    printf("num2 的地址 : %p\n",&num2);
    
    
    return 0;
}
