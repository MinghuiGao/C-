//
//  main.c
//  1【掌握】数组指针的概念及定义
//
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 数组指针的概念及定义
    数组：一组类型相同的元素的有序集合，是一个容器。
    数组指针：一个指向数组的指针变量。其中存放的是数组的首地址。
    
    定义一个数组指针:
        1、定义一个数组
        2、定义一个形同类型的指针，指向数组的首地址。
 
    注意：
        一个数组的数组名并不代表整个数组，只是表示数组的首地址。
 */
int main(int argc, const char * argv[]) {
    
    int nums[] = {1,2,3,4,5};
    int *numsP;
    // 让numsP这个指针，指向nums数组的首地址。
    numsP = nums;
    
    printf("nums = %p,numsP = %p\n",nums,numsP);
    
    return 0;
}
