//
//  main.c
//  5【掌握】字符串结束符
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
    字符串结束符号
    1、'\0' 就是字符串结束符。
        作用：用来表示字符串结束的字符。
        好处：有了'\0'，可以不必再用字符数组的长度来判断字符串的长度。
        
        初始化字符数组的做法：
            1、char str[] = {'h','e','l','l','\0'};
            2、使用字符串来初始化字符数组，在末尾会自动添加'\0'字符。
 
    2、不使用'\0',会导致字符数组越界访问，直到遇到'\0'时结束。
    3、在数组中间使用'\0'，会导致输出时，提前结束。因为'\0'表示字符串结束，输出时遇到'\0'就结束输出。
    
 */
int main(int argc, const char * argv[]) {
    
    char str[] = {'h','e','l','l'};
    printf("%s\n",str);
    
    char str2[] = {'a','a','d'};// 初始化字符数组的时候，没有再最后加上'\0'，使得字符串没有被正确初始化。
    
    printf("%s\n",str2);
    
    char str3[] = "hello";
    
    char str4[] = {"hello"};
    
    printf("%s\n",str3);
    printf("%s\n",str4);
    
    char str5[] = {'a','b','c','\0','d'};// 不会输出d字符。
    printf("%s\n",str5);
    
    return 0;
}
