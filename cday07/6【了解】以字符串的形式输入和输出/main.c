//
//  main.c
//  6【了解】以字符串的形式输入和输出
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 字符串的输入输出
    输出：
        char str[] = "hello ";
        printf("str = %s\n",str);
    
        格式控制符：%s,
        输出遇到'\0'的时候结束。
 
    输入：
        使用scanf函数
        注意：
            输入的时候，不能有空格，因为输入时，会将空格是为字符串的结束。
 
            可以时用多个格式控制符进行控制。
        
        char str[10];
        scanf("%s",str);
        注意：
            穿入的事数组名，数组名就代表了数组的首地址。所以不许要对数组的首地址进行&运算。
    
 */
int main(int argc, const char * argv[]) {
    char str[] = "hello ";
    char str2[] = {'a','n','\0','b'};
    printf("str = %s\n",str);
    printf("str2 = %s\n",str2);
    
    // 一字符串形式的输入
    char str3[100];
    
//    scanf("%s",str3);
//    
//    printf("str3 = %s\n",str3);
    
    char s4[10],s5[10];
    scanf("%s%s",s4,s5);
    printf("%s %s\n",s4,s5);
    
    
    
    
    return 0;
}
