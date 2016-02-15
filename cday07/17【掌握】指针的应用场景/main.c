//
//  main.c
//  17【掌握】指针的应用场景
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 指针的应用场景
    间接使用主调函数中的变量
 
    实现被调函数的多个返回值
    
 */
void fun(int *);
//
void fun2(int *a,int *b);




int main(int argc, const char * argv[]) {
    int num = 10;
    fun(&num);
    int a = 10,b = 20;
    fun2(&a, &b);
    printf("a = %d,b = %d\n",a,b);
    return 0;
}

void fun2(int *a,int *b){
    *a += 1;
    *b += 1;
}

/*
  间接使用主函数中的变量。
 */
void fun(int *p){
    printf("p+1 = %d\n",*p +1);
}
