//
//  main.c
//  6【掌握】无参宏定义和使用方法
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
#define PI 3.14
int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    float r = 10;
    float area = PI*r*r;
    printf("area = %.2f\n",area);
    return 0;
}
