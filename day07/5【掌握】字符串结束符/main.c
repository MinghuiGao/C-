//
//  main.c
//  5【掌握】字符串结束符
//
//  Created by 高明辉 on 15/12/28.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     字符串结束符：
        '\0' －－》 是一个字符
        "abc";字符串的长度为3，但在内存中是：'a' 'b' 'c' '\0'，因此占4个char的位置，所以长度为4个字节。
        注意：字符串所占的空间是字符串的长度＋1。
        
        C语言允许用字符串的方式对数组作初始化赋值。

     
     */
    printf("--%c---\n",'\0');//打印出来什么也没有
    
//    char ch[] = {'a','b','c'};// 在字符串的后面也会有\0.
    char ch[]="abc";
    
    //字符串所占空间 4个字节
    //字符串长度  3
    int len = 0;
    len = sizeof(ch)/sizeof(char);
    printf("%s长度:%d\n",ch,len);
    
    
    // 初始化是没有写长度，并且没有使用'\0'，那么会是字符串无法正常结束。就会产生越界，访问到垃圾值。
    char ch1[] = {'a','b','c','q','d','g','d','s'};
    printf("%s\n",ch1);
    
    char ch2[10] = {'a','\0','b'};
    // 注意，输出时遇到\0 就结束了，因此后面的 ‘b’不会打印出来。
    printf("%s\n",ch2);
    
    return 0;
}
