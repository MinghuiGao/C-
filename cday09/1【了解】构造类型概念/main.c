//
//  main.c
//  1【了解】构造类型概念
//
//  Created by 高明辉 on 16/2/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // 定义 一个学生的结构体
    struct student{
        int num;
        char name[20];
        char sex;
        float score;
    };
    // 注意，结尾有分号；。
    return 0;
}
