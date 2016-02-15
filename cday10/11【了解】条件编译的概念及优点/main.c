//
//  main.c
//  11【了解】条件编译的概念及优点
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

#define M 0

#if M == 1
void gm_log(){
    printf("这是日志输出");
}
#else
void gm_log(){
    printf("不输出日志");
}
#endif

int main(int argc, const char * argv[]) {
    
    /*
     #if defined M
     特定代码块;
     #endif
     表示如果前面定义过宏M则可以将特定的代码块编译进源文件,可以调用执行。
     #if 常量表达式
     程序段1
     #else
     程序段2
     #endif
     */
    gm_log();
    
    return 0;
}
