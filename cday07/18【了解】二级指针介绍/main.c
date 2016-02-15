//
//  main.c
//  18【了解】二级指针介绍
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
    二级指针和多级指针
    
    int *p; // 一级指针。
 
    二级指针：指向指针的指针。
    int **p;
 
    多级指针：
        规则：定义的时候有n个＊，就代表着n级指针。
            在取值时就要使用n个＊。
 */
int main(int argc, const char * argv[]) {
    int num = 10;
    int *p;
    p = &num;// p中存储的是num变量的地址。
    
    int **p2;// 一个二级指针。存储指针变量地址的指针变量。
    p2 = &p;
    
    // 通过p2访问num变量
    //     *p2 去到的是指针变量p的内容(num 变量的地址)。
    //     *(*p2)  取到的才是num变量的值。
    printf("num = %d\n",*(*p2));
    
    // 定义一个3级指针
    int ***p3;
    p3 = &p2;
    
    printf("num = %d\n",***p3);
    
    return 0;
}
