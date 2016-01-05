//
//  main.m
//  ocday01
//
//  Created by 高明辉 on 16/1/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

/*
    oc的helloworld
    1，oc的源文件 是.m文件，后缀名为m。c语言的源文件是.c文件。
        1）Foundation 是一个框架，提供一些OC程序需要的基本函数。
    
        2）#import <Foundation/Foundation.h>  是一个预处理指令，在编译阶段执行。
    
        3）#import 和 #include 命令的区别：
        #include 命令是包括，将要包括的内容复制到#include 命令处.
        注意：如果重复使用＃include指令包含相同的文件，那么会产生重复包含的现象。
        #import 和＃include最大的区别九在于＃import可以防止重复包含的问题。
    
        4）Foundation 框架存放的位置：
    
    2、int main(int argc, const char * argv[]) {}
        main：是主函数，程序执行的入口，当程序开始运行时有系统调用
        return 0; ／／ 表示程序正常结束退出。
    3、@autoreleasepool｛｝自动释放池；在讲内存管理的时候会着重介绍，目前基础阶段去掉不影响。
    4、NSLog(@"welcome to itcast!"); 和C语言中的printf非常类似，
        作用：讲双引号包括的内容输出到控制台。
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"welcome to itcast!");
    }
    return 0;
}
