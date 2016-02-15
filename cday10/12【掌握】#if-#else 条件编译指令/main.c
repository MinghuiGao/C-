//
//  main.c
//  12【掌握】#if-#else 条件编译指令
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/*
     按分数进行奖励，
     一辆布加迪威龙（车模）
     奖励苹果6一台
     奖励6个苹果
     不及格，就罚他削苹果。
 */
#define score 50

#if score >= 60 && score < 70
void pay(){
    printf("奖励6个苹果");
}
#elif score >= 70 && score < 80
void pay(){
    printf("奖励苹果6一台");
}
#elif score >= 80 && score < 90
void pay(){
    printf("一辆布加迪威龙（车模）");
}
#elif score >= 90 && score <= 100
void  pay(){
    printf("女朋友一个");
}
#elif score < 60
void pay(){
    printf("小苹果");
}
#endif

int main(int argc, const char * argv[]) {
    pay();
    return 0;
}
