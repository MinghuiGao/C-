//
//  main.c
//  14【掌握】#ifndef 条件编译指令
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
 #ifndef 标识符
 程序段1
 #else
 程序段2
 #endif
 功能 : 同 #if !defined M
 */
//#define GM_DEBUG
//#if !defined GM_DEBUG
//void gm_log(){
//    printf("调试模式\n");
//}
//#else
//void gm_log(){
//    printf("生产模式\n");
//}
//#endif

#define GM_DB
#ifndef GM_DB
void gm_log(){
    printf("生产模式\n");
}
#else
void gm_log(){
    printf("调试模式\n");
}
#endif  

int main(int argc, const char * argv[]) {
    gm_log();
    return 0;
}
