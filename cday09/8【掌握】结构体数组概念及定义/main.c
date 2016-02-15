//
//  main.c
//  8【掌握】结构体数组概念及定义
//
//  Created by 高明辉 on 16/2/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // 先定义结构体然后再定义数组。
    struct stu{
        int num;
        char *name;
    };
    struct stu girls[10];
    // 定义结构体的同时，定义数组
    struct boy{
        int num;
        char *name;
    } boys[10];
    
    return 0;
}
