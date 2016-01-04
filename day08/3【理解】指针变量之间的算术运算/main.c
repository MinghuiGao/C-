//
//  main.c
//  3【理解】指针变量之间的算术运算
//
//  Created by 高明辉 on 15/12/31.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
   /*

    1、指针变量与指针变量之间可以做减法运算.
        注意：
            只有指向同一数组的两个指针变量之间才能进行运算,否则运算毫无意义。
        
        这个时候,结果是两个指针指向的元素之间相差多少个元素.
        
        
        
        指针变量之间只能做减法运算  其他的算术运算是不能做的.

    
    2、指针变量之间的关系运算（比较大小）
        指针变量存放的地址，地址是个整数值，因此可以比较大小
        
        p==p1 表示p和p1指向同一数组元素;
        p>p1 表示p指向的元素处于高地址位置;
        p<p1 表示p指向的元素处于低地址位置。
        p和0相比：
        p == 0  说明p指向NULL（空指针）
        p != 0  说明p不是空指针。
    
    */
    
    
    
    int arr[] = {10,20,30,40};
    
    int *p1 = arr;
    
    int *p2 = &arr[2];
    
    printf("p1 = %p\n",p1);
    printf("p2 = %p\n",p2);
    
    long num =  p2 - p1;//获取数组中两个元素的位置差
    
    
    printf("num = %ld\n",num);
    
    int num1 = 10;
    int num2 = 20;
    char ch = 'a';
    char ch2[100];
    int num3 = 30;
    
    
    int *p3 = &num1;
    int *p4 = &num2;
    int *p5 = &num3;
    
    
    long num4 =   p3 - p5;
    printf("num4 = %ld\n",num4);
    
    int *pN = NULL;
    
    printf("p3 > p4 = %d\n", p3 > p4 );
    printf("pN == 0 = %d\n",pN ==  0 );
    /*
     p3 > p4 = 1 说明 p3所指的地址高于p4所指的地址，（谁的值大，谁高）
     pN == 0 = 1 说明pN指向NULL，为空指针。
     */
  
    return 0;
}
