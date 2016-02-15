//
//  main.c
//  6【掌握】字符串指针介绍及使用
//
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
/*
    字符串指针的介绍及使用
 
    1、怎样使用字符串指针
        定义一个字符类型的指针，并且赋值为字符串的首地址。
        使用方式：
            char *str = "hello world!";
    2、使用注意事项
        1）可以使用指针偏移来查看每一个字符
         char *s = "hello";
         // 查看下标为4的字符
         printf("%c\n",*(s+4));
        2)但是不能通过指针的偏移来修改某个字符
            因为指向的字符串是一个常量。
        3）在是用字符串指针接受键盘输入的时候，必须预先分配内存空间。
 
 */
int main(int argc, const char * argv[]) {
    char str[] = "hello world!";//使用字符数组来存储字符串
    char *str2;
    str2 = str;
    
    printf("str = %s,str2 = %s\n",str,str2);
    
    char *str3 = "hello itcast!";
    char *str4 = {"hehheh","hhh"};

    
    printf("str3 = %s,str4 = %s\n",str3,str4);
    
    char *s = "hello";
    // 查看下标为4的字符
    printf("%c\n",*(s+4));
//    *(s+4) = 'a';// 是只读的，不能修改
    printf("s = %s\n",s);
    
    char *str5 = (char*)malloc(sizeof(char)*10);
    scanf("%s",str5);
    
    return 0;
}
