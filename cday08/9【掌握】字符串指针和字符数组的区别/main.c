//
//  main.c
//  9【掌握】字符串指针和字符数组的区别
//
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 字符串指针和字符数组的区别
 
    1、存储位置的区别
        字符指针变量存储在栈区，所指向的字符串存储在常量区，属于常量。
        字符数组存储在在栈区，内容页存储在栈区，其中的内容是可读写的。
 
    2、赋值方式的区别
        
 
 
 
 */
int main(int argc, const char * argv[]) {
    // 字符指针变量
    char *str1 = "helloworld";
    
    // 字符数组
    char str2[10]= "hello";
    
    printf("str1 = %p, str2 = %p\n",str1,str2);
    
    char *str3 ;
    str3 = "helloworld";
    
    
    //字符数组的福祉
    char str4[10] = {"hello"};
    
    char str5[] ={'j','a','c','k','\0'};
    
    char str6[10];
//    str6 = {"hello"};//  不能这样写，必须要一个一个赋值。
    
    str6[0] = 'h';
    str6[1] = 'e';
    
    
    
    return 0;
}
