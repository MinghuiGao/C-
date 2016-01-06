//
//  main.m
//  7【掌握】访问OC源文件、C源文件中的函数
//
//  Created by 高明辉 on 16/1/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "testC.h"
#import "testOc.h"
/*
    oc的源文件是.m文件，C源文件是.c文件
    OC继承自C，兼容C的大部分语法。
 
    1、在.m文件中访问.c文件中的函数
    
    调用步骤：
        1）创建一个.c 和 .h 文件
        2）在.h文件中声明一个函数，并在.c中实现函数
        3）在.m文件中导入#import "testC.h"
        4）在.m文件中调用即可。
        
    2、在.m文件中调用其它.m文件中的函数
        1）创建一个testOc.h
        2）创建一个同名的testOc.m文件
        3）完成函数的声明和实现
        4）在main.m中调用testOc.h中声明的函数
        
    调用步骤:
        1) 导入头文件 #import "testOc.h"
        2) 在main函数中调用即可。
 */
// 在OC的源文件中编写C的函数
void printName(){
    printf("朝日天\n");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // 调用了OC源文件中的C函数
        printName();
        NSLog(@"Hello, World!");
        // 调用了在C的源文件中实现的函数.oc兼容大部分C的代码。
        funInC();
        // 调用了在其它.m中声明实现的函数
        funInOc();
    }
    return 0;
}
