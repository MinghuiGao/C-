//
//  main.c
//  7【了解】二维字符数组概念
//  
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
    二维字符数组概念
    给字符数组找一个容器，就是二维字符数组
    
    注意：
        声明二维字符数字的时候，可以省略行树，但是不能省略列数。
 
 */
int main(int argc, const char * argv[]) {
    
    char str1[100] = "hellowor";
    char str2[100] = "hello itcast!";
    char str3[50] = "how old are you ?";
    
    char strs[][100]={"fengjie","furongjiejie","zhansanfeng"};
    
    char strs2[3][100] = {
        "fengjiejie",
        "furongjie",
        "zhangsanfeng"
    };
    
//    char strs3[][] = {"fengjiejie","furongjiejie","zhangsanfeng"};
    
    printf("strs2[1] = %s\n",strs2[1]);
    printf("strs2[1][5] = %c\n",strs2[1][5]);
    return 0;
}
