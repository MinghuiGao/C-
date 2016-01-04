//
//  main.c
//  8【理解】字符串处理函数（一）
//
//  Created by 高明辉 on 15/12/28.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
    
    /*
     puts函数.
     
         1)puts函数可以自动换行;
         2)必须传入地址(指针)，可以是数组的首地址,可以是元素的地址
         3)必须是字符数组
         4)不可以格式化输出 ,如果需要进行格式化输入使用printf函数。
     
     
     
     2). gets函数.
         1)不安全:数组长度是100,但是如果你输入了120个字符,存在越界问题
            scanf和gets都是不安全的，当数组长度不够时，都会出现问题。
         2)传入字符数组的首地址作为参数
         3)使用gets可以接收空格
     
     
     在接收字符串数据的时候 无论是scanf还是get都是不安全的. 当字符数组的长度不够的时候就会出问题.
     
     
     3). strcat()函数. 
        需要引入字符串处理相关的头文件 string.h
     
        作用: 将两个字符串连成1个字符串并存放在第一个字符串中.
        格式: strcat(字符数组1,字符数组2); 将第2个字符串中的字符串数据 存储到 第1个字符数组的后面.
        注意：
     
         1) 字符数组1的长度要能存放连接后的字符串，否则报错。
         2) 拼接时会删掉字符数组1最后的\0。
     
     */
        char str1[100] = "helloworld";
        puts(str1);// 不能格式化输出
        printf("str1 = %s\n",str1);
    
        // 输入前需要开辟空间
        char str2[10];
        // 有可能超出范围，因此报警告：warning: this program uses gets(), which is unsafe.
        // 如果越界了，那么程序会崩溃。
        gets(str2);
    
        puts(str2);
    
        char* newStr = strcat(str1, str2);
    
        printf("res = %s\n",newStr);
    
    

    
    return 0;
}
