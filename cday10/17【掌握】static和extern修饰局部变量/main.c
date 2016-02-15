//
//  main.c
//  17【掌握】static和extern修饰局部变量
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

/*
 static 修饰局部变量作用：
    延长变量的生命周期，从程序启动到程序退出，但是没有改变变量的作用域
    定义变量的代码在程序执行过程中只会执行一次。
 
 extern 用来修饰全局变量。
 */
void fun(){
    static int num = 0;
    num += 1;
    printf("num = %d\n",num);
}
void fun2(){
    extern int num;// 报错，编译错误。
    num = 0;
    num += 1;
    printf("num = %d\n",num);
}
int main(int argc, const char * argv[]) {
    
    fun();
    fun();
    return 0;
}
