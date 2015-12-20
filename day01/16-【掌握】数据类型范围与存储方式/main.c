//
//  main.c
//  16-【掌握】数据类型范围与存储方式
//
//  Created by 高明辉 on 15/12/20.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     1 Byte = 8bit.
     
     short 占2个字节 16bit
     int 占4个字节  32bit
     long  占8个字节   64bit
     
     char  占1 个字节  8bit
     
     float  占4 个字节  32bit  可以表示7～8个精确的数据位。12345678.0    12345.6789
     double   占8 个字节  64bit  可以表示16～17个精确的数据位。
    
     指针类型 占8 个字节   64bit 存的就是地址
     
     signed 有符号
     unsigned  无符号
     
     sizeof ：能够察看某种数据类型的量在内存中占用多少字节数。给出一个无符号的long类型的数值。
     
     */
    printf("short 占%lu 个字节\n",sizeof(short));
    printf("int 占%lu 个字节\n",sizeof(int));
    printf("long 占%lu 个字节\n",sizeof(long));
    
    printf("char 占%lu 个字节\n",sizeof(char));
    
    printf("float 占%lu 个字节\n",sizeof(float));
    printf("double 占%lu 个字节\n",sizeof(double));
    
    // 指针就是地址
    char *c;
    printf("指针类型 占%lu 个字节\n",sizeof(c));
    
    int a = 1999999999999;// 数据超出了类型能够表示的最大范围，就会发生数据益处。
    return 0;
}
