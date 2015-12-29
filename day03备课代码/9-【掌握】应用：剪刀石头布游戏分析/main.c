//
//  main.c
//  9-【掌握】应用：剪刀石头布游戏分析
//
//  Created by 高明辉 on 15/12/29.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    /*
     规则：   
        ✊ 》 ✌️
        ✌️ 》 👋
        👋 》 ✊
        
     产生随机数的函数：
        arc4random_uniform(n); 
        作用：产生0 到 n-1范围内的一个随机数。
     
     */
    
    // 1、提示玩家出拳
    printf("玩家请出拳：0 ✌️ ，1 ✊ ， 2 👋\n");
    // 2、接收玩家的出拳
    int user = -1;
    scanf("%d",&user);
    
    // 3、让电脑出拳
    int com = -1;
    com = arc4random_uniform(3);
    
    // 4、进行结果判断 5、结果打印
    if ( user == 1 && com == 0) {
        printf("您出的✊，电脑出✌️，您获胜了！\n");
    }else if(user == 2 && com == 1 ){
        printf("您出的👋，电脑出✊，您获胜了！\n");
    }else if(user == 0 && com == 2){
        printf("您出的✌️，电脑出👋，您获胜了！\n");
    }else if(user == 0 && com == 1){
        printf("您出的✌️，电脑出✊，电脑赢了，再来一局!\n");
    }else if(user == 1 && com == 2){
        printf("您出的✊，电脑出👋，电脑赢了，再来一局!\n");
    }else if(user == 2 && com == 0){
        printf("您出的👋，电脑出✌️，电脑赢了，再来一局!\n");
    }else if(user == com && user == 0){
        printf("您出的✌️，电脑出✌️，平局再战!\n");
    }else if(user == com && user == 1){
         printf("您出的✊，电脑出✊，平局再战!\n");
    }else if(user == com && user == 2){
        printf("您出的👋，电脑出👋，平局再战!\n");
    }
    
    
   
    
    
    
    return 0;
}
