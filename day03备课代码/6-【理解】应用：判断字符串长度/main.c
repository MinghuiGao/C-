//
//  main.c
//  6-【理解】应用：判断字符串长度
//
//  Created by 高明辉 on 15/12/30.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     1、提示用户输入一串字符，使用while结构来判断字符的长度。
     
         思路分析：
         1、提示用户输入一串字符；
         2、使用scanf来接收用户的输入；
         3、当scanf的缓冲区中有字符时，下次读取会直接读取缓冲区中的字符
         4 、使用一个整形变量纪录长度
     */
    printf("请输入一串字符：\n");
    char ch;
    scanf("%c",&ch);// scanf有缓冲区。
    
    int len = 0;
    // 单输入完成后，最后一个字符可以确定是\n。因此当读到'\n'字符时表示一串字符结束了。
    while (ch != '\n') {
        // 读一个字符，并且该字符不等于 '\n'，那么认为是一个有效字符，所以长度加一。
        len++;
        // 读如下一个字符，相当于i++的作用。
        scanf("%c",&ch);
    }
    
    printf("长度为%d\n",len);
    return 0;
}
