//
//  main.c
//  14【掌握】常见的内存分配函数
//
//  Created by 高明辉 on 16/2/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/*
 maclloc
 calloc
 realloc
 
 */
int main(int argc, const char * argv[]) {
    
    int *p;
    p = (int *)malloc(4 * sizeof(int));
    if (p != NULL) {
        *p = 1;
        *(p+1) = 2;
        *(p+2) = 3;
        *(p+3) = 4;
    }
    // 将原来p指向的内存空间扩充为10个int类型变量的空间。
    p = realloc(p, 10*sizeof(int));
    if (p != NULL) {
        *(p+4) = 5;
        *(p+5) = 6;
    }
    for (int i = 0; i < 10; i++) {
        printf("%d\n",*(p+i));
    }
    
    return 0;
}

void funCalloc(){
    int *p = NULL;
    // 分配100个int的空间 ,并且将值初始化为0.
    p = calloc(100,sizeof(int));
    if ( p != NULL) {
        *p = 1;
        *(p+1) = 2;
        *(p+2) = 3;
    }
    for (int i = 0; i < 100; i++) {
        printf("%d",*(p+i));
    }

}
void funMalloc(){
    int *p = NULL;
    int size = 100;
    // 申请了一块连续的内存空间。
    p = (int*)malloc(sizeof(int) * size);
    p = memset(p, '\0', size);
    if (p != NULL) {
        *p = 1;
        *(p+1) = 2;
        *(p+2) = 3;
    }
    for (int i = 0; i < size;i++) {
        printf("%d\n",*(p+i));
    }
}