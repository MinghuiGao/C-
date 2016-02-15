//
//  main.c
//  12【掌握】指针变量概念及定义方法
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 指针变量概念及定义方法
    指针变量，就是存放指针的变量，指针就是地址，可以想象成一个整数的常量。

 如何定义一个指针变量
    类型说明符号 ＊变量名；

    类型说明符：是指指针指向的内存中存放的数据的类型。
    ＊：标示这是一个指针类型的变量
    变量名：指针变量的变量名，通过这个变量名来引用这个指针变量。
    例如：
        int *p;
    含义：
        定义了一个指针变量p，这个指针变量指向一个int类型的变量的地址。
 
 注意：
    1、* 标示这个变量是一个指针变量。
    2、某个类型的指针变量，只能存放相同类型变量的地址，不能接受其他类型的变量的地址。
    3、所有的指针变量的内存空间都一样，占8个字节（64bit环境下）。
 
 
 */
int main(int argc, const char * argv[]) {
    int *p;// 定义了一个指针变量
    // 给P赋值：
    int num = 10;// 一个int类型的变量。
    p = &num;// 通过&num来获取num变量的地址，然后赋值给p。这样p就指向了num变量所在的内存的首地址。
    // 定义一个指向float类型变量的指针变量f。
    float *f;
    // 定义了一个指向都变了类型的变量的指针变量d。
    double *d;
    // 定义了一个指向char类型变量的指针变量c。
    char *c;
    
    d = &num;
    
    printf("f = %lu,d = %lu,c = %lu,p = %lu\n",sizeof f,sizeof d,sizeof c,sizeof p);
    
    
    return 0;
}
