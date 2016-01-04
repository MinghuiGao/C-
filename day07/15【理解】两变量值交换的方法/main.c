//
//  main.c
//  15【理解】两变量值交换的方法
//
//  Created by 高明辉 on 15/12/28.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

void switchValue(int a, int b){
        int temp;
        temp = a;
        a = b;
        b = temp;
}

void swtichValue2(int *a, int *b){
    int temp;
    temp = *a;
    *a = *b;
    *b = temp;
    
}

int main(int argc, const char * argv[]) {
    /*
     如何交换两个变量的值？
     
     */
    
    int a = 3,b = 5;
    printf("a = %d,b = %d\n",a,b);
//    int temp;
//    temp = a;
//    a = b;
//    b = temp;
    // 如果在函数中呢？
    switchValue(a, b);
    // 并没有交换！因为siwtchValue函数中的a，b和main函数中的a，b在不通的内存空间
    
    swtichValue2(&a,&b);
    // 使用指针（地址）来间接访问变量，实际上操作的就是main函数中a ，b所在的内存，因此值交换了。
    
    printf("a = %d,b = %d\n",a,b);
    
    
    return 0;
}
