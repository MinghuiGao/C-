//
//  main.c
//  7【掌握】字符串长度计算方法
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
  字符串长度的计算方法
    1）不知道数组的长度的时候
        char str[] = "helloworld itacsta!";
        计算标准：以'\0'作为字符串的结束符。
 
    2) 当数组长度已知，但是不知道数组中实际存放了多少个字符的时候。
        注意：字符串的长度和字符数组的长度是不相同的。
 
 */

int stringLength(char str[],char key){

    // 遍历str中的元素，和key进行比较
    int i = 0;
    while (str[i] != '\0') {
        if (str[i] == key){
            // 和key值想等，那么返回当前元素的索引
            return i;
        }
        i++;
    }
    // 如果遍历完数组之后，还没有发现想等的值，那么返回－1.
    return -1;
}
int main(int argc, const char * argv[]) {
    /*
     思考&实现1:
     判断字符串中是否包含某个字符,如果包含,返回其首次出现的位置,否则返回-1。
     思路:
     函数参数: 字符串数组
     遍历该数组中的元素；
     1)判断是否=='\0'
     如果 == '\0'
     结束
     否则 如果 == key
     return i;
     2)如果没有查找得到,返回-1
     */
    char str[] = "hello world!";
    
    int len = stringLength(str, 'w');
    printf("len = %d\n ",len    );

    return 0;
}

/*
 计算数组的长度
 
 */
void test1(){
    //    char str[] = "helloworld itacsta!";
    char str[100] = "hellow rld !";
    
    // 算法：一个一个数，只要字符不是'\0' ,字符串的长度就＋1.
    
    int i = 0;
    int count = 0;
    while (str[i] != '\0') {
        i++;
        count ++;// 向后移一个字符
    }
    
    printf("len = %d\n",count );
    
    
}
