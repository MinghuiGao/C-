//
//  main.c
//  15【理解】两变量值交换的方法
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 交换两个变量的值
    在main函数中交换
 
    在其他函数中交换两个变量的值
        通过地址传递来实现。
    
 不是用中间变量来交换两个变量的值：
 
    a = a^b;
    b = a^b;
    a = a^b;
 
 */
void switchNumbers(int ,int);
void switchNumsers2(int *p1,int *p2);
void swtichNum3(int *p1,int *p2);
int main(int argc, const char * argv[]) {
    int a = 10, b = 22;
    printf("a = %d,b = %d\n",a,b);
    
//    switchNumbers(a, b);
//    switchNumsers2(&a, &b);
    swtichNum3(&a,&b);
    
    printf("a = %d,b = %d\n",a,b);
    return 0;
}
void swtichNum3(int *p1,int *p2){
    *p1 = (*p1) ^ (*p2);
    *p2 = (*p1) ^ (*p2);
    *p1 = (*p1) ^ (*p2);
}

void switchNumsers2(int *p1,int *p2){
    int tmp;
    tmp = *p1;
    *p1 = *p2;
    *p2 = tmp;
}
void switchNumbers(int a,int b){ //  通过值传递的方式，无法在被调函数中交换主调函数的变量。
    printf("-----a = %d,b = %d\n",a,b);
    // 交换ab的值
    int tmp ;// 中间变量
    tmp = a;
    a = b;
    b = tmp;
    printf("-----a = %d,b = %d\n",a,b);
}
