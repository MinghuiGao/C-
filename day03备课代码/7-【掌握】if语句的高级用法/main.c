//
//  main.c
//  7-【掌握】if语句的高级用法
//
//  Created by 高明辉 on 15/12/29.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...

    
    /*
     1、输入一个属于0-100的成绩,按0-59(E),60-69(D),70-79(C),80-89(B),90-100(A) 分成几等,分别输出对应的大写字母。
     // 输入0-100 的分数值，然后输出该分数对应的等级。
     */
//    // 1、接受用户的输入
//    float score = -1;
//    printf("请输入成绩:(0-100)\n");
//    scanf("%f",&score);
//    
//    // 2、判断段等级
//    if(score >= 0 && score <= 100){
//        // 细分等级
//        if(score >= 0 && score <= 59){
//            printf("E\n");
//        }else if(score >= 60 && score <=60){
//            printf("D\n");
//        }else if(score >= 70 && score <= 79){
//            printf("C\n");
//        }else if(score >= 80 && score <= 89){
//            printf("B\n");
//        }else if(score >= 90 && score <= 100){
//            printf("A\n");
//        }
//        // 注意：可以省略else语句快！
//    }else{
//        printf("输入错！请重新输入\n");
//    }
    
    
    
    
    /*
     2、从键盘输入三个数字 获取这三个数字的最大值
     涉及: if语句的嵌套。
     */
    // 1、获取输入
    int num1,num2,num3;
    printf("输入三个数字:\n");
    scanf("%d%d%d",&num1,&num2,&num3);
    
    //  2、判断三个数中的最大值
    //  2.1 比较两个数，然后再用其中加大的数和第三个数进行比较
    if (num1 > num2) {
        // 2.2 num1较大，再使用num1和num3进行比较，输出较大者
        if(num1 > num3){
            // num1最大
            printf("最大的数是： %d\n",num1);
        }else{
            printf("最大的数是：%d\n",num3);
        }
    }else{
        // 2.3 num2 较大，使用num3和num2进行比较，输出较大者
        if(num2 > num3){
            printf("最大的数是：%d\n",num2);
        }else{
            printf("最大的数是：%d\n",num3);
        }
    }
    
    
    
    return 0;
}
