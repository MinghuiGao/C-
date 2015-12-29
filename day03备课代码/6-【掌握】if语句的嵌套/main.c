//
//  main.c
//  6-【掌握】if语句的嵌套
//
//  Created by 高明辉 on 15/12/29.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     if语句的嵌套
        在一个if语句中，再来一个if语句。
        形式：
            if(条件1){
                //当条件1成立的时候要执行的代码
                if(条件2）{// 这就叫做if的嵌套
                    // 当条件1成立，并且条件2也成立的时候，执行的代码。
                }
            }
     */
    
    // 找个女朋友，要求：1，女的，2、活的
//    int sex;
//    int isAlive;
//    
//    if(sex == 1){
//        // 如果还有钱
//        // 如果还年轻
//        // 如果还漂亮
//        if(isAlive == 1){
//            printf("满足女朋宇的条件\n");
//        }
//        
//    }else if(sex == 2 ){
//        if(isAlive == 1){
//            
//        }
//    }else{
//        if(){
//            
//        }
//    }
    
    /*
     从键盘输入一个数字，并判断是否在10到100之间。
     
     
     X > 10 && x < 100

     */
    
    int num;
    scanf("%d",&num);
//    if(x > 10 && x < 100){
//        
//    }
    
    if(num > 10){
        if(num < 100){
            printf("%d\n",num);
        }
    }else{
        printf("num <= 10\n");
    }
    
    return 0;
}
