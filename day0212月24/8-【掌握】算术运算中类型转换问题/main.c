//
//  main.c
//  8-【掌握】算术运算中类型转换问题
//
//  Created by 高明辉 on 15/12/24.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    /*
     类型转换分为两种：
        1、自动类型转换（隐士类型转换）
            自动类型转换，由编译器自动完成。
            自动类型转换的规则：
                    向类型长度增加的方向进行转换。
                    short －》 int － 》 long
                    float －》 double
        2、强制类型转换（显式类型转换）
            基本格式：
                    (要转化的类型)要转化的量
            注意： 既可以转换常量，也可以转换变量
     
     
     
     */
    5/2;
    printf("5/2 = %d\n",5/2);
    
    printf("%f\n",(double)5/(double)2);//
    int a = 5;
    int b = 2;
    printf("a / b = %f\n",(double)a/(double)b);
    
    
    printf("5/2 = %f\n",(double)5/2);// (double)5 是对5进行了强制类型转换。
    
//    double d;
//    scanf("%lf",&d);
    
//    printf("d = %lf\n",d);
//    float f ;
//    scanf("%lf",&f);
    return 0;
}
