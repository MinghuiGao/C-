//
//  main.m
//  5【掌握】NSLog函数使用方法
//
//  Created by 高明辉 on 16/1/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 1 NSLog 声明介绍
    是一个函数，。。。是可变参数
    ocruntime，介绍苹果在开源领域的贡献，虽然ios是闭源的
 
 2 和printf函数对比讲解
    NSlog:
    1)可以自动换行
    2）添加了时间戳
    3）多了项目名称
    4) 头文件在 ObjcRuntime.h中
    printf:
    1)不能自动换行
    2）不能输出时间戳信息
    3) 头文件在stdio.h中
 3 输出不同类型的变量
    printf:
    1) 需要使用占位符 int -> %d , char ->%c, float ->%f. char* ->  %s
    
    NSLog:
    1) 输出变量的值时和printf相同，使用同样的占位符。
    
 注意：NSLog不能输出C语言中的中文字符。
    对于oc中的字符串对象，printf也无法正常输出（乱码）。
  4 NS前缀
    NS前缀的来源，来自nextsoftwear的首字母简写
    不同的前缀代表不同的功能框架
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num = 1;
        char ch = 'a';
        float  f = 3.14f;
        char *s = "adbc";
        char *str = "光辉";
        NSString *str2 = @"寒冰射手"; //  OC中的字符串对象
        
        
        NSLog(@"Hello, World!");
        NSLog(@"num = %d, ch = %c,f = %.2f,s = %s",num,ch,f,s);
        NSLog(@"str = %s",str);
        
        printf("hello world! str = %s,str2 = %s\n",str,str2);
        
        
    }
    return 0;
}
