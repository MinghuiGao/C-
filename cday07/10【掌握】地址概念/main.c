//
//  main.c
//  10【掌握】地址概念
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 C语言中地址的概念
    地址就是存储单元在内存中的编号，按照顺序进行排列。
    相当于一个房间的门牌号。
    是一个十六进制的整数，以0x开头。
    注意：
        内存单元的地址和内存单元中存放的数据是没有关系的。
 
 */
int main(int argc, const char * argv[]) {
    int a = 10;
    printf("a的地址是:%p\n",&a );
    
    return 0;
}
