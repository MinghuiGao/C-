//
//  main.c
//  10-【理解】复合赋值运算符
//
//  Created by 高明辉 on 15/12/24.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /**
     复合赋值运算符概念
        简化i ＝ i + 1;类型的表达式
        i += 1;
     
        在赋值符“=”之前加上其它二目运算符 -> 复合赋值运算符。
        i = i*10;
        i *= 10;
     
        i = i *(1+i);
        i *= 1+i;
     
     
     运算过程
        i += 1;
        执行过程： 1 i+1; 2. 把i+1的值赋值i。
        i %= 5;
        1. 1%5.  2. 把i％5的值赋值给i。
     
     优先级和结合性、目数
        目数：二目运算符。原因： 连接了两个操作数。
        优先级：
     
     
     练习
     
     */
    
    int i = 1;
//    i = i+1;
//    i += 1;
//    i = i * (9+1);
//    i *= (9+1);
//    printf("i = %d\n",i);
    
    
    printf("i = %d\n",i);
    
    return 0;
}
