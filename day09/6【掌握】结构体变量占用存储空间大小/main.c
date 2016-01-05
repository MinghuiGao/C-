//
//  main.c
//  6【掌握】结构体变量占用存储空间大小
//
//  Created by 高明辉 on 16/1/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
    计算结构体占用的字节数
     等于结构体类型中各成员的占用字节数的和，但是要考虑对齐问题。
     计算方法：
        1、找对齐模数，就是结构体中占字节数最大的成员变量
        2、
     
     */
    
    struct Student{
        char *name;//8
        int age; //4
        int s;
//        char c;
        char no[10];
        double score;//8
    };
    long len = sizeof(struct Student);
//    printf("len = %ld\n",len);
//    printf("sizeof(char *name) = %ld\n",sizeof(char*));
////    printf();
//    struct Student s = {"gaomh",12,1,"123456789",12.2};
//    printf("s.name = %p\n",&(s.name));
//    printf("s.age = %p\n",&s.age );
//    printf("s.no = %p\n",s.no);
//    printf("s.score = %p\n",&s.score);
//    
//    
    
    typedef struct Simple{
        
        char a;
        short b;
        short b1;
        short b2;
        int c;
        
        double d;
    }s1;
    
    s1 s = {'a',12,23,1.2};
    printf("sizeof s1 = %ld\n",sizeof(s1));
    printf("s char = %p\n",&(s.a));
    printf("s.short = %p\n",&s.b );
    printf("s.int  = %p\n",&s.c);
    printf("s.double = %p\n",&s.d);
    
//    typedef struct Simple{
//        
//        char ch1[13];
//        char ch2[12];
//        double d;
//    }s2;
//    s2 s = {"wwww","ddddd",1.2};
//    printf("sizeof s2 = %ld\n",sizeof(s2));
//    printf("s char[13] = %p\n",s.ch1);
//    printf("s.char[11] = %p\n",s.ch2);
//    printf("s.double = %p\n",&s.d);
    
    return 0;
}
