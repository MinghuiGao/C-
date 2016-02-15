//
//  main.c
//  16【理解】指针为什么要分类型
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 指针为什么要分类型
    指向任何类型的变量的指针都占8个字节（64bit环境下）。
    但是指针还是分类型：
        原因：
            1、指针需要根据类型来决定操作多大的内存空间。
                指针指向的是变量第一个字节的地址，一个变量可能包含多个字节。
 
            2、指针的偏移，也需要根据类型来偏移，
                比如int类型的偏移4个字节才能访问到下一个元素。
                char类型的，偏移1个字节就可以访问到下一个元素。
 
 
 */
int main(int argc, const char * argv[]) {
    int num = 10;
    double d = 4.13;
    
    int *pInt = &num;
    double *pDouble = &d;
    
    int nums[] = {1,2,3,4,5,6};
    double dNums[] = {1.23,3.14,0.91};
    
    printf("num[0] = %p,num[1] = %p\n",&nums[0],&nums[1]);
    printf("dNums[0] = %p,dNums[1] = %p\n,",&dNums[0],&dNums[1]);
    
    printf("num[0] = %p,num[1] = %p\n",nums,nums+1);
    printf("dNums[0] = %p,dNums[1] = %p\n,",dNums+0,dNums+1);
    return 0;
}
