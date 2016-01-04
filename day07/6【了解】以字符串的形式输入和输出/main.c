//
//  main.c
//  6【了解】以字符串的形式输入和输出
//
//  Created by 高明辉 on 15/12/28.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /**
    输出
        使用的格式字符串为“%s”,表示输入、输出的是一个字符串。
        注意：要穿入数组名。
     输入：
        先定义一个字符数组（开辟一块内存）, 在用scanf进行输入。
        注意：
            如果实际输入超过了字符数组的最大长度，会报错！所以是不安全的。
            输入以空格为分隔，以回车为结束。
     
     */
    
//    char ch[]="hello world!\n";
    char ch[]="hello\0world!\n";// 注意，打印到\0结束。
    printf("%s",ch);
    printf(ch);// 虽然报警告，但也能打印出来。
    printf("\n---------\n");
    char ch1[10];
    scanf("%s",ch1);
    
    
    printf("ch1 = %s\n",ch1);
    
    return 0;
}
