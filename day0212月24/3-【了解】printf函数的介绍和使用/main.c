//
//  main.c
//  3-【了解】printf函数的介绍和使用
//
//  Created by 高明辉 on 15/12/24.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>


int main(int argc, const char * argv[]) {

    /*
        使用printf函数，需要引入头文件stdio.h ，但是对于printf函数也可以不引入。
        
        printf函数的一般使用形式：
            1、输出一段字符：
                printf("hello owrld \n");
            2、输出变量的值。
                printf("格式控制字符串",输出项列表);
     
            3、输出多个变量的值
                printf("%d,%d,%d",a,b,c);
                注意： 
                    格式控制字符串中的占位符要和后面的输出相的类型和次序一一对应。
        
        注意：
                %.2f 表示保留小数点后面2位小数，并且四舍五入。
        
        域宽：
            %5d
            %-5d
            %0d
        转义字符：
        在控制台打印出 :
        "hello,'dog',\o/,50%"
        "hello,'dog',\o/,50%"
     "\"hello,\'dog',\\o/,50%%\"\n"
     */
    printf("hello world...\n");
    
    
    int a = 210;
    // 我想打印出a的值，怎么办？
    printf("a = %d\n",a);
    
    float f = 123456.56789f;
    printf("f = %5.2f\n",f);// ％f默认输出6位小数。
    
    
    float f1 = 1.23456789f;
    printf("f1 = %.9f\n",f1);
    
    float f2 = 123456789.0f;
    printf("f2 = %f\n",f2);
    
    double d = 1.23456789123456789;
    printf("d = %.19lf\n",d);
    
    int a1 = 10;
    long b = 100000l;
    float fx = 1.2f;
    
    printf("a1 = %d,b = %ld,fx = %.2f\n",a1,b,fx);
    
    // 打印转义字符：
    printf("\"hello,\'dog',\\o/,50%%\"\n");
    
    
    return 0;
}
