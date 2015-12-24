//
//  main.c
//  9-【掌握】赋值运算符
//
//  Created by 高明辉 on 15/12/24.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    /*
     什么是赋值运算符
        = ”数学当中等于号“ ，含义是：将＝右边的值赋值给左边的量。
     
     什么是赋值表达式
        a = 10;
     赋值表达式的结果是什么
        被赋值后的变量的值。
     
     什么量可以被赋值
        常量： 不能被赋值。
        表达式：不能被赋值。
        变量： 变量可以被赋值。
     结合性和优先级、目数
        目数：一个运算符能够连接操作数的个数。
        赋值运算符是一个二目运算符。
        
        优先级：赋值运算符的优先级低于算术运算符。
        结合性：右结合性
     
     思考与实现
     **/
    
    int a;
    // 把10 赋值给a
    a = 10;// 这是一个赋值表达式。
    int b ;
    b = 10;
    
    printf("结果是：%d\n",a=13);
//    1 = 2;报错！// 注意，常量不能被赋值。
    
    a = 1;// 变量可以被赋值。
//    a+b = 1;// 表达式不能被赋值
    
    
    int c ;
    c = 10*3/5 + b;
    
    printf("c = %d\n",c);
    
    
    int d;
    d = c = b = 1;// 结合性是从右往左。
    
    printf("d = %d,c= %d,b = %d\n",d,c,b);
    
    int x = 1;
    int y = 10;
    int z = y = y+x+100;
    printf("x = %d,y = %d,z = %d\n",x,y,z);
    
    return 0;
}
