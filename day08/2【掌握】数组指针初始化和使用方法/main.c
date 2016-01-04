//
//  main.c
//  2【掌握】数组指针初始化和使用方法
//
//  Created by 高明辉 on 15/12/31.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     如何定义并初始化一个数组指针
     
     如何通过数组指针访问数组元素
        
        访问数组元素：
            1、通过数组名＋下标
                数组名是数组的首地址，也就是一个地址常量。
                指向数组的指针中存放的也是数组名所代表的地址。
            2、通过数组指针＋下标。
            
            3、通过指针的偏移
                int *p;
                int nums[] = {1,2,3,4,5};
                p = nums;
                p+1－－－> 代表p所指向的数组的下一个元素的地址。
     
     
     数组指针的偏移
     
     
     */
    
//    // 定义一个int数组
//    int nums[100];
//    
//    // 定义一个int类型的指针变量
//    int *p;
//    p = nums;
    
    int nums[] = {1,2,3,4,5};
    int *p = nums;// 定义并初始化指针变量p1，p1指向数组首地址。
    // 通过数组名＋下标
    printf("num[1] = %d\n",nums[1]);
    
    // 通过指针变量＋元素下标
    printf("p[1] = %d\n",p[1]);
    
    // 通过指针偏移
    printf("p = %p\n",p);
    printf("p+1 = %p\n",(p+1));
    /*
     p = 0x7fff5fbff620
     p+1 = 0x7fff5fbff624
     正好差四个字节，也就是一个int所占的空间。也就是从p＋1指向了数组的下一个元素。
     */
    // 通过指针偏移想访问数组的第2个元素
    printf("第二个元素:%d\n",  *(p+1));
    
    printf("第三个元素:%d\n",  *(p+2));
    // 注意偏移是可以越界的
    printf("第100个元素:%d\n",  *(p+99));
    //第100个元素:1345283180
    
    
    return 0;
}
