//
//  main.c
//  10【了解】字符串数组应用：字符串排序
//
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
#include <string.h>
/*
    输入5个国名并按字母顺序排列后输出。
	排序:冒泡排序。

 */
int main(int argc, const char * argv[]) {
    
    char *name[]= {"CHINA","AMERICA","AUSTRALIA","FRANCE","GERMAN"};
    
    //  按照字母的顺序排列
    // 使用字符串比较函数
    // 冒泡排序法   比较两个字符串，将assic码大的，往后交换
    /*
     冒泡法：两层for训话，0～len -1   0~len -1 -i;
     strcmp(str1,str2)；-->  str1 > str2 ，返回结果>0.
     */
    int len = 5;
    for (int i = 0; i < len-1; i++) {
        for (int j = 0; j < len - i -1; j ++) {
            // 比较交换
            if (strcmp(name[i],  name[i+1]) > 0) {
                // 交换
                char *tmp;
                tmp = name[i];
                name[i] = name[i+1];
                name[i+1] = tmp;
            }
        }
    }
    
    
    // 输出排序后的数组
    
    for (int i = 0;  i < len; i++) {
        printf("%s\n",name[i]);
    }
    
    return 0;
}
