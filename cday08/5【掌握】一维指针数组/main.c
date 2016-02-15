//
//  main.c
//  5【掌握】一维指针数组
//
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
     为什么使用指针数组？
        当我们需要定义多个指针的时候，就需要使用一个指针的容器。就是指针数组。
     如何定义指针数组
 
     如何使用指针数组
 
 */
int main(int argc, const char * argv[]) {

//    int *p1;
//    int *p2;
//    int *p3;
//    ...
//    int *p100;

    //指针数组
    int *p[100];// 定义了一个包含100个指针变量的数组。
    // 通过下标来访问元素，每一个元素标示一个指针。
    int num1 = 10;
    int num2 = 12;
    p[0] = &num1;
    p[1] = &num2;
    
    
    return 0;
}
