//
//  main.c
//  2【掌握】字符数组定义
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
    1、什么叫字符数组，
        就是元素师字符类型的数组。
        
        字符数组的定义形式：
             char 数组名[数组长度];
        二维的字符数组：
            　char 数组名[行数][列数];
 
        注意：
            定义字符数组的时候，应确保数组长度比字符串长度至少多1.
 */

int main(int argc, const char * argv[]) {
    // 定义了一个包含10个元素的字符型数组。
    char chars[10] = "1234567890abcdef";
//    chars = "1234567890abcdef";// 不能直接使用数组名赋值。
    printf("%s\n",chars);
    int nums[10]= {};
    
    char chars2[3][5000] = {"1234\0","aa\0","st"};
    printf("%s\n",chars2[2]);
    return 0;
}
