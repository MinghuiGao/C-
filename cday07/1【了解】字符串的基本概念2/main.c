//
//  main.c
//  1【了解】字符串的基本概念2
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 字符串：
     就是一串字符，使用双引号包括。
     由一个活多个字符组成。
     在C语言中，没有可以直接接收字符串的变量。可以使用字符数组，或者是字符指针来接收字符串。
     
     注意：
        不能把 字符串常量 赋值给一个 字符型变量。
        字符串在内存中，是以'\0'标示结束的。
 
 */
int main(int argc, const char * argv[]) {
    
    'a';
    char c = 'a';
    printf("%c\n",c);
    "hello world!";
    
    
    char ch[10] = "hel\0lo";// 字符串以'\0'标示字符串的结束
    printf("ch = %s\n",ch);
    char *str = "hellowrold";
    
    char c2 = "hello";//  不能讲一个字符串常量赋值给一个字符变量。
    
    printf("%c\n",c2);
    
    
    return 0;
}
