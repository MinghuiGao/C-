//
//  main.c
//  6【掌握】字符串指针介绍及使用
//
//  Created by 高明辉 on 15/12/31.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     使用字符数组来存放字符串
     
     使用字符串指针指向字符串
        定义一个char类型的指针变量来存放字符串的地址。
     
     两种方式的区别
        注意:
        1、使用字符数组来保存的字符串是保存栈里的,保存栈里面东西是可读可写,所有我们可以改变里面的字符当把一个字符串常量赋值一个字符数组的时候,那么它会把字符串常量 中每一个字符都放到字符数组里面。
        2、使用字符串指针来保存字符串,它保存的是字符串常量的地址,常量区是只读的, 所以我们不可以修改字符串中的字符。
     
     接受键盘输入的字符串时注意：
        1、使用字符数组存放字符串时，一旦定义了数组，那么久意味着已经分配了内存空间。
        2、但是使用字符串指针存放时，定义了指针之后，要手动的神情内存空间。
     */
    //使用字符数组来存放字符串
    char str[] = "I love China!";
    // 修改字符数组中的元素
    str[2] = 'L';
    printf("%s\n",str);

    // 使用字符串指针指向字符串
    char *str1 = "abc" ;
    // 无法修改字符串的内容
//    *(str1+1) = 'B';//  虽然编译不报错，但是运行时崩溃。
    printf("%s\n",str1);// 打印的话，直接穿入该指针变量即可。
    
    // 定义了一个char了型的指针，指向了一个char类型变量的地址。虽然都是地址，但含义不同。
    char ch = 'b';
    char *p1 = &ch;
    
    
    
    return 0;
}
