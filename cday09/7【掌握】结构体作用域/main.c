//
//  main.c
//  7【掌握】结构体作用域
//
//  Created by 高明辉 on 16/2/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

// 全局结构体
struct student{
    int num;
    char *name;
};

void test(){
    // 局部结构体
    struct student2{
        int num;
        char *name;
    };
    
}

int main(int argc, const char * argv[]) {
    
    
    return 0;
}
