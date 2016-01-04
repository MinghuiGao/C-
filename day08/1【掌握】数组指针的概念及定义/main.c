//
//  main.c
//  1【掌握】数组指针的概念及定义
//
//  Created by 高明辉 on 15/12/31.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     什么叫数组指针？
        是一个指向数组的指针,即一个指针变量中存放了一个数组的地址。
        
        数组的地址：数组名（常量）
     
     如何定义一个数组指针变量？
        定义一个和数组元素类型相同的指针变量即可。用该指针变量存放数组首地址，也就指向了该数组。
     
     */
    // 定义一个数组
    int nums[10];
    // 定义一个和数组类型相同的指针变量
    int *p;
    p = nums;
    // p 就是一个数组指针，即指向数组的指针变量。
    
    return 0;
}
