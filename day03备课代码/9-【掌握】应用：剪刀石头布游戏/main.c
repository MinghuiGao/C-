//
//  main.c
//  9-【掌握】应用：剪刀石头布游戏
//
//  Created by 高明辉 on 15/12/29.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    /*
     规则：
        0 ✌️  ，1 ✊， 2  👋
         ✌️》 👋
         👋》 ✊
         ✊》 ✌️
     arc4random_uniform(n);
     作用： 产生0～n-1范围内的一个随机整数。使用之前需要导入一个头文件：stdlib.h
     
     */
    
    // 实现步骤：
    //1、提示玩家输入：
    printf("玩家请出拳： 0 ✌️  ，1 ✊， 2  👋\n");
    
    // 2、获取玩家的输入
    int user = -1;
    scanf("%d",&user);
    if (user < 0 || user > 2) {
        printf("您出拳有误！请重新开始！\n");
        return 0;
    }
    
    // 3、电脑出拳
    int com = -1;
    com = arc4random_uniform(3);// 产生0～2范围内的一个随机整数。
    
    // 4、比较并输出结果
    //  使用if语句进行出拳判断
    if(user == 0){// 用户出剪刀
        if(com == 0){
            printf("您出✌️，电脑出✌️，平局！\n");
        }else if(com == 1){
            printf("您出✌️，电脑出✊，电脑赢！\n");
        }else if(com == 2){
            printf("您出✌️，电脑出👋，玩家赢！\n");
        }
    }else if(user == 1){// 用户出✊
        if(com == 0){
            printf("您出✊，电脑出✌️，玩家赢！\n");
        }else if(com == 1){
            printf("您出✊，电脑出✊，平局！\n");
        }else if(com == 2){
            printf("您出✊，电脑出👋，电脑赢！\n");
        }
    }else if(user == 2){// 用户出👋
        if(com == 0){
            printf("您出👋，电脑✌️，电脑赢!\n");
        }else if(com == 1){
            printf("您出👋，电脑出✊，玩家赢！\n");
        }else if(com == 2){
            printf("您出👋，电脑出👋，平局！\n");
        }
    }
    
    
    return 0;
}
