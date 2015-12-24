//
//  main.c
//  4-【了解】scanf函数的介绍和使用
//
//  Created by 高明辉 on 15/12/25.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /**
        scanf函数：用于接收键盘输入的内容。
        scanf(格式控制字符串，输入项地址列表);
            输入项地址列表：指的是要存放输入数据的变量的地址
        输入项列表要和格式控制字符串中的 占位符 的类型保持一致，类型一一对应。
        
        取地址符：& 
        作用： 用来获取变量的地址
        使用方法： &变量名
     
        %d  ->int
        %ld ->long
        %c  -> char
        
        %f -> float
        %lf -> double
     
        连续输入多个数值型变量的值，可以使用空格  ，tab，回车来进行分隔。
     
        连续输入多个char类型的变量,会出现问题。
        
        解释scanf的缓冲区原理。
     
        最后总结scanf如何吸收空格和回车： 在占位符前面加上空格即可。// 完美！
     
     
     注意scanf常见的错误：
        1、没传地址
     
        2、在格式控制字符串末尾加了换行: scanf("%d\n",&a);
        
        3、运行多个target，导致看不到输入的效果。解决办法：在运行target之前，先停掉其他的target。
     
     */
//    int a = 100;
//    scanf("%d",&a);
//    printf("a = %d\n",a);
//    
//    
//    double d ;
//    scanf("%lf",&d);
//    printf("d = %lf\n",d);
//    
//    long l ;
//    scanf("%ld",&l);
//    printf("l = %ld\n",l);
    
//    char c;
//    scanf("%c",&c);
//    printf("c = %c\n",c);
    
    // 输入多个int变量的值
//    int a;
//    int b;
//   
//    scanf("%d%d",&a,&b);
//    printf("a = %d,b = %d\n",a,b);
    
    char c1;
    char c2;
    scanf("%c %c",&c1,&c2 );
    printf("c1 = %c,c2 = %c\n",c1,c2);
    
    
    scanf(" %c",&c1);
    
    scanf(" %c",&c2);
    
    return 0;
}
