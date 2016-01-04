//
//  main.c
//  5【掌握】一维指针数组
//
//  Created by 高明辉 on 15/12/31.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     为什么使用指针数组？
        指针数组：
            就是一个用来存放指针变量的数组。
    
     如何定义指针数组
        定义的一般形式：
            类型说明符 *数组名[数组长度]
     如何使用指针数组
        指针数组的每一个元素都是一个指针
     
     */
    
    int num1 = 12;
    int num2 = 13;
    int num3 = 10;

 
    int *p1 = &num1;
    int *p2 = &num2;
    int *p3 = &num3;
    
    //  如果定义100个呢？找个容器：数组
    
    int *p[10];// 定义了一个包含是个int类型指针的数组，就是指针数组。
    // 给数组指针的元素赋值：
    p[0] = &num1;
    p[1] = &num2;
    
    // 访问元素指向的内容
    printf("*p[0]  ＝ %d\n",*p[0] );
      
    return 0;
}
