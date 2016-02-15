//
//  main.c
//  4【掌握】字符数组的元素引用和遍历
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 字符数组的元素引用和遍历
    1、数组元素的引用
        1）通过数组下标引用：str[0] 访问下标为0的元素。
    2、数组的遍历
        通过循环来访问数组的所有元素。
 
    案例：通过while循环遍历一维字符数组，二维字符数组。
 
 */
int main(int argc, const char * argv[]) {
    // 定义一个数组
    char str[10] = "hello";
    
    // 引用数组元素
    printf("str[0] = %c\n",str[0]);
    
    //通过while循环遍历一维字符数组，二维字符数组。
    char newStr[100] = "hello world,itcast!";
    // 循环结束的条件: 也就是字符串结束的条件，访问当'\0'字符的时候。
    int i = 0;
    while (newStr[i] != '\0') {// 当元素不等于'\0'的时候，继续循环。
        printf(" %c",newStr[i]);
        i++;// 访问下一个元素
    }
    printf("\n");
    return 0;
}
