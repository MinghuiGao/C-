//
//  main.c
//  8【掌握】char类型的指针数组
//
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
    ßchar类型的指针数组
        char类型的指针可以用来指向一个字符串。
        char类型的指针数组，作用就是存放字符串的容器。
 
 */
int main(int argc, const char * argv[]) {
//    char *name1 = "jack";
//    char *name2 = "rose";
//    char *name3 = "dausen";
//    ...
    
    // 定义一个char类型的指针数组。
    char *names[10] = {"jack","rose","dausen"};
    for (int i = 0; i < 10; i++) {
        printf("name[i] = %s\n",names[i]);
    }
    
    return 0;
}
