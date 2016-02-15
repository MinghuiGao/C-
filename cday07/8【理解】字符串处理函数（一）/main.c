//
//  main.c
//  8【理解】字符串处理函数（一）
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
#include <String.h>
/*
 字符串处理函数1
    C语言中的字符串处理函数，是C语言提供的一些操作字符串的苦函数。
    在使用之前，需要引入string.h 头文件。
 
    1、puts
        在控制台输出字符串。
        puts(字符数组的地址);
        注意：
            1) 必须要穿入字符串的首地址，或者字符数组的首地址。
            2）不能尽兴格式化输出。
            3）puts可以自动换行
 
    2、字符串输入函数 gets
        格式：
            gets(数组名);
        功能：从键盘上输入一个字符串。
        注意：
            使用gets()函数，是不安全的，如果输入的内容超过了数组的长度，会报错。
            gets函数只能穿入分配了空间的地址。比如数组名。
            gets可以接受空格。
 
    3、字符串链接函数
        strcat
        使用格式：
            strcat(字符数组名1，字符数组名2);
        功能：把字符数组2中的字符串链接到字符数组1中的字符串后面，并删掉字符数组1最后的'\0'。
        注意：
            返回的是连接后的字符串的首地址，也就是str1的首地址。
            str1 中存储的也是拼接后的字符串， 并将原来的str1中的'\0'去掉了。
 
 
 */
int main(int argc, const char * argv[]) {
    char str1[20]= "hello";
    char str2[] = " world!";
    
    char * res = strcat(str1, str2);
    printf("res = %s, str1 = %s, str2 = %s\n",res,str1,str2);
    
    return 0;
}

// 字符串的输入输出。
void test1(){
    // char str[] = "hello world";
    char *str = "hello";
    printf("str = %s\n",str);
    puts(str);
    
    char str2[10];
    gets(str2);
    puts(str2);
}
