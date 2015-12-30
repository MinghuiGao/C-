//
//  main.c
//  9-【掌握】do...while循环语句练习
//
//  Created by 高明辉 on 15/12/30.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     案例2：
     提示用户输入一个正整数n，计算1+2+3+…+n的和。
     */
    
//    printf("输入一个正整数n：\n");
//    int n;
//    scanf("%d",&n);
//    
//    int i = 1;
//    // 存放累加合
//    int sum = 0;
//    // 一共要加n个数，所以循环n次。
//    while (i < n+1) {
//        // 进行累加
//        // 从1开始加
//        sum = sum +i;
//        
//        i++;
//    }
//    
//    printf("sum = %d\n",sum);
    
    /*
     案例3:
     输入一个正整数n，计算n!。
     */
    printf("输入一个正整数n:\n");
    int n ;
    scanf("%d",&n);
    
    // n! = 1*2*...*(n-1)*n;
    // 要乘n个数，所以循环n次
    // 用于存放最后累成的结果
    int total = 1;// 注意不能默认为0！
    
    int i = 1;
    while (i < n+1) {
        // 进行累乘
        total = total * i;
        i++;
    }
    printf("%d! = %d\n",n,total);
    
    return 0;
}
