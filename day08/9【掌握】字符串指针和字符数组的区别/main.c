//
//  main.c
//  9【掌握】字符串指针和字符数组的区别
//
//  Created by 高明辉 on 15/12/31.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     
     */
    
    char *p = "string";
    
    char *p1;// 存放在栈区
    p1 = "string";
    
    
    char str[] = {"helloworld"};// 缺省的修饰符时static,存放在静态区
    
    printf("%s\n",str);
    return 0;
}
