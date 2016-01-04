//
//  main.c
//  10【掌握】地址概念
//
//  Created by 高明辉 on 15/12/28.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     地址的概念：
        内存中存储数据的最小基本单位是字节（byte）. 每1个字节都有1个独一无二的编号，就是在内存中的位置，也叫做地址.
        
        char占一个字节，因此每个char变量都有一个内存地址
        形式：0x7fff5fbff7cf，是一个16进制的整数，是一个整数！
        
        变量的地址：
            不同类型的变量可能占不同的字节数：
            int 4个byte
            double 8个byte
        每个变量也有地址，所占的第一个字节的地址就是变量的地址
     
     */
    
    char c = 'a';
    printf("&c = %p\n",&c);
    // 结果 ： &c = 0x7fff5fbff7cf
    
    int a = 1;
    int b = 2;
    printf("&a = %p\n",&a);
    printf("&b = %p\n",&b);
    /*
     &a = 0x7fff5fbff7c8
     &b = 0x7fff5fbff7c4
     两个变量的地址差4个字节。
     */
    return 0;
}
