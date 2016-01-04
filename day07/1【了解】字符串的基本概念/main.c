//
//  main.c
//  1【了解】字符串的基本概念
//
//  Created by 高明辉 on 15/12/28.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /**
     一串字符，也就是位于双引号中的字符序列
     在内存中以“\0”结束,所占字节比实际多一个
     
     */
    "hello";// 实际上在内存中是： h e l l o \0
    char c = 'a';// 字符
    
    char c2 = "hello";//
    printf("%c",c2);// 结果错误！不能把字符串赋值给字符变量.
    
    // 在C语言中用什么来存放字符串呢？
    char c3[] = "hello";//可以使用字符数组来存放
    
    
    return 0;
}
