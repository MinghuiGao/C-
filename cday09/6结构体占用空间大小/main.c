//
//  main.c
//  6结构体占用空间大小
//
//  Created by 高明辉 on 16/2/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    struct simple{
        int m1;//占 4个字节
        char m2;// 占 1个字节
        char m3;//占 1个字节
    } s1 ;
    
    //模 int ---> 4
    
    struct simple1{
        char m2;// 占 1个字节
        int m1;//占 4个字节
        char m3;//占 1个字节
        
        
    } s2 ;
    struct simple2{
        int m1; // 4
        short m2; // 2
        char m2_5; // 1
        double m3; // 8
    };
    
    printf("%lu\n",sizeof(struct simple2));
    
    //结构体在内存中占用的字节数 不是各个属性简单相加的结果
    //对齐方式：看对齐模数／2后，能否存的下，如果存的下，就从第对齐模数／2个字节开始存放。
    printf("-->%ld \n",sizeof(struct simple));
    printf("-->%ld \n",sizeof(struct simple1));
    return 0;
}
