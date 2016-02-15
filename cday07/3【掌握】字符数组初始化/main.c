//
//  main.c
//  3【掌握】字符数组初始化
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
    字符数组的初始化    
 
    1、在定义的同事初始化，
        
        char 数组名[数组长度] = {'h','e','l','l','o'};
        char 数组名[数组长度] = "hello";
        注意：
            静态初始化之后，没有被赋值的元素，都被默认的初始化为'\0'.
 
    2、先定义，在对每个元素进行赋值。
        数组定义完之后，被默认初始化为'\0'。
 
 */
int main(int argc, const char * argv[]) {
    // 定义的同时初始化。
    char str[10] = "hello";
    
    printf("str = %s\n",str);
    
    // 先定义，在赋值
    char str2[10];
    // 通过访问数组元素的方式对字符数组进行赋值。
    str2[0] = 'h';
    str2[1] = 'e';
    str2[2] = 'l';
    str2[3] = 'l';
    
//    str2 = "hello"; // 不能直接用数组名进行赋值，数组名是一个常量。
    printf("str22 = %s\n",str2);
    
    return 0;
}
