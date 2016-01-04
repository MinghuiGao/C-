//
//  main.c
//  7【掌握】字符串长度计算方法
//
//  Created by 高明辉 on 15/12/28.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     
     
     sizeof计算的是 字符数组 占的总的字节数.不等于字符串的长度，也不一定等于字符串的长度＋1.

     
     正确的方法: 
        从字符数组的第0个元素开始记数,直到遇到'\0'结束.
     
    
     */
    
    
//    char ch[10]="hello";
//    int len = 0;
//    len = sizeof(ch)/sizeof(char);
//    printf("%s--->%d\n",ch,len);
    
    char ch[100] = "hello";
    int len = 0;
    
    while (ch[len] != '\0')
    {
        len++;
        
    }
    printf("%s 长度为 %d\n",ch,len);
    
    return 0;
}
