//
//  main.c
//  4【掌握】字符数组的引用和遍历
//
//  Created by 高明辉 on 15/12/28.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     字符数组的引用和遍历
     字符数组和普通数组一样,也是通过下标引用。
     */
    
    char chs[10] = {'j','a','c','k'};
    printf("第二个字符: %c\n",chs[1]);//  通过下标引用
    
    
    // 遍历：通过while循环来依次访问，直到遇到\0 字符结束
    int i = 0;
    while (chs[i] != '\0') {
        printf("%c\t",chs[i]);
        i++;
    }
    return 0;
}
