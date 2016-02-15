//
//  main.c
//  4【掌握】指针变量之间的关系运算
//
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
    指针变量之间的关系运算
     如何判断地址高低
        1、指针存的是整数值，整数值越大，标示地址越高。判断地址的高低，只要比较整数值的大小即可。
     比较指针变量的用处
        2、指针常用来和0进行比较，指针存放的地址值为0，标示指针是一个空指针。
 
 */
int main(int argc, const char * argv[]) {
    int nums[] = {1,2,3,4,5};
    int *p1 = &nums[0];
    int *p2 = &nums[2];
    
    if (p1 > p2) {
        printf("p1 高于 p2\n");
    }else if(p1 < p2){
        printf("p1 低于 p2\n");
    }else{
        printf("p1 和 p2想等\n");
    }
    return 0;
}
