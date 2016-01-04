//
//  main.c
//  8【掌握】char类型的指针数组
//
//  Created by 高明辉 on 15/12/31.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     char类型的指针数组
        就是一个存放char类型指针变量的额数组。
     
     
     */
    
    // char类型的指针可以存放字符串
    // 存放班级所有人的名字
    char *name1 = "mike";
    char *name2 = "god";
    char *name3 = "zhangsan";
    
    // 找个容器来盛放
    char *names[100];
    names[0] = "mike";
    names[1] = "god";
    
    
    // 也可以使用静态的方式初始化
    char *names2[100] = {"mike","god","zhangsa"};
    

    return 0;
}
