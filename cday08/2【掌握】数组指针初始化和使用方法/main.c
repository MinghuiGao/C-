//
//  main.c
//  2【掌握】数组指针初始化和使用方法
//
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 数组指针的初始化和使用方法
    1、如何定义并初始化一个数组指针
         // 定义的同时初始化，
         int *numsP = nums;
         // 先定义后初始化
         int *numsP2;
         numsP2 = nums;
 
     2、如何通过数组指针访问数组元素
        和使用数组名访问数组元素一样，通过下标访问。
        numsP[0];
 
     3、数组指针的偏移
        numsP表示数组首地址，也表示数组第一个元素。numsP+i 表示下标为i的元素 的地址。
        要想获取元素，需要使用＊。
        *(numsP+i) 表示下标为i的元素的值。
     4、数组名和数组指针的区别和联系
        区别：
            数组名是一个常量，数组指针是一个变量。
        联系：
            都指向数组的首地址，也是数组第一个元素的地址。
 
 */
int main(int argc, const char * argv[]) {
    
    int nums[] = {1,2,3,4,5};
    // 定义的同时初始化，
    int *numsP = nums;
    // 先定义后初始化
    int *numsP2;
    numsP2 = nums;
    
    //  通过数组名来访问数组元素
    printf("nums[0] = %d,nums[1] = %d\n",nums[0],nums[1]);
    
    // 通过数组指针访问数组元素
    printf("numsP[0]= %d,numsP[1] = %d\n",numsP[0],numsP[1]);
    
    // 通过数组指针，打印出数组中的下标为3的元素。
    printf("nums[3] = %d\n",*(numsP+3));
    
    
    
    return 0;
}
