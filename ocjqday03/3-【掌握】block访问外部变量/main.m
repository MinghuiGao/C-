//
//  main.m
//  3-【掌握】block访问外部变量
//
//  Created by 高明辉 on 16/1/28.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    1、block访问外部变量
        在block内部访问外部的局部变量，是以const常量的形式拷贝的堆区使用，和原来的局部变量不是同一个变量。
    2、在block内部，修改外部的局部变量。
        如果要在block内部修改局部变量，那么要在外部的局部变量声明的时候，添加 __block 类型修饰符。
        在block内部使用了外部的局部变量之后，改变了局部变量的存储区域，有缘来的栈区，转移到了堆区存储，并且不会在回到栈区。
 
 
 */
int m = 10;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        __block NSString *str = @"hello";
//        static int m = 10;
        NSLog(@"m = %d, m: %p",m,&m);
        
        // 定义一个block
        void (^myBlock)() = ^(){
            // 在block内部修改外部的局部变量。
            
            m = 100;// 在block内部使用了之后，就转移到堆区。改变局部变量的存储区区域。
            NSLog(@"m = %d, m: %p",m,&m);
            str = @"test";
            NSLog(@"%@",str);
            
            NSLog(@"this is a block");
        };
        
        myBlock();
        
        m = 100;
        NSLog(@"m = %d, m: %p",m,&m);

        
    }
    return 0;
}
void test2(){
    // 局部变量，存储在栈区。
    __block int m = 10; // 需要加上__block类型修饰符。这是变量扔存储在栈区。
    NSLog(@"m = %d, m: %p",m,&m);
    
    // 定义一个block
    void (^myBlock)() = ^(){
        // 在block内部修改外部的局部变量。
        
        m = 100;// 在block内部使用了之后，就转移到堆区。改变局部变量的存储区区域。
        NSLog(@"m = %d, m: %p",m,&m);
        
        
        NSLog(@"this is a block");
    };
    
    myBlock();
    
    m = 100;
    NSLog(@"m = %d, m: %p",m,&m);
}

void test1(){
    // 局部变量，存储在栈区。
    int m = 10;
    NSLog(@"m = %d, m: %p",m,&m);
    
    // 定义一个block
    void (^myBlock)() = ^(){
        // 在block内部使用外部的局部变量。
        //            m =1000;
        NSLog(@"m = %d, m: %p",m,&m);// 0x1005049a0  block内部的m地址变了，存储在堆区。
        
        
        NSLog(@"this is a block");
    };// 一定要有分号！
    
    myBlock();
    
    m = 100;
    NSLog(@"m = %d, m: %p",m,&m);
    
}