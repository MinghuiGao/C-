//
//  main.m
//  19-【理解】内容总结
//
//  Created by 高明辉 on 16/1/27.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    1、block 的概念，
        是C语言中的语法和运行机制，和C的函数类似，用^来表示。
 
        可以使用block在调用api的时候，想api中穿入药执行的代码块。这些代码可以在程序执行时对程序运行产生影响。

    2、block的基本形式
        定义格式：
            返回值类型 (^block名称)(参数列表) = ^(参数列表){//要执行的代码};
            // 相当于定义的时候就初始化。
        先定义，再初始化。
        　  返回值类型 (^block名字)(参数列表);
            block名字 = ^(){// 要执行的代码};
        
        注意：^(){}后面一定要有 “;"!
 
    3、有参数的block 
        void (^fun)(int x, int y) = ^(int x ,int y){
            NSLog(@"%d + %d = %d",x,y,x+y);
        };
        注意：
            void (^fun)(int x, int y)也可以写成：void (^fun)(int, int)
     4、有参数有返回值的block
        int (^blockName)(int ,int ) = ^(int x,int y){
            return x*y;
        };
 　
 
 
 
 */
void test3();
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 定义一个有返回值类型的block
        int (^blockName)(int ,int ) = ^(int x,int y){
            return x*y;
        };
        int res = blockName(10,20);
        NSLog(@"res = %d",res);
        
        
    }
    return 0;
}

void test3(){
    //定义一个有参数的block
    void (^fun)(int x, int y) = ^(int x ,int y){
        NSLog(@"%d + %d = %d",x,y,x+y);
    };
    
    fun(1,2);
    
    // block名称后面的参数列表只写参数类型也可以。
    void (^fun2)(int, int) = ^(int x ,int y){
        NSLog(@"%d + %d = %d",x,y,x+y);
    };
    
    fun2(10,20) ;
}

void  test2(){
    //  先定义，在赋值
    void (^block)();
    block = ^(){
        NSLog(@"test 2");
    };
    block();
}


void test1(){
    // 定义一个block
    void (^testBlock)() = ^(){
        NSLog(@"this is a block.");
    };
    // 调用
    testBlock();
    
}


