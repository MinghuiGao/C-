//
//  main.c
//  13【掌握】#ifdef 条件编译指令
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 #ifdef 标识符
 程序段1
 #else
 程序段2
 #endif
 */
#define GM_DEBUG
#ifdef GM_DEBUG
void gm_log(){
    printf("这是debug模式 \n");
}
#else
void gm_log(){
    printf("这是生产模式\n");
}
#endif  

int main(int argc, const char * argv[]) {

    gm_log();
    return 0;
}
