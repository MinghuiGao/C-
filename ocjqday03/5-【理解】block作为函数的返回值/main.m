//
//  main.m
//  5-【理解】block作为函数的返回值
//
//  Created by 高明辉 on 16/1/28.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
    1、block可以作为函数的参数穿进去，也可以作为函数的返回值返回。
        返回一个block，就意味着返回了一个代码块。
        
    2、如何来定义一个返回值类型是block的函数？
        1）使用typedef给block起一个别名。
        2）使用新类型作为函数的返回值来声明函数。
        3）调用函数 用一个BlockType类型的变量来接收返回的block
        4）调用block
    这只是对block的一个远离的讲解，后面在讲多线程的时候，还会补充。
 */


//int (^block)(int a,int b) work(int a ,int b){// 报错！此时的block是一个变量。
//    
//}
typedef int(^BlockType)(int ,int );
// 此时的block是一个类型：代表着返回值为int，接收两个int型参数的bolock。

//  声明函数
BlockType test(){
    BlockType bt = ^(int x, int y ){
        return x+y;
    };
    return bt;
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 调用函数 用一个BlockType类型的变量来接收返回的block。
        BlockType bt = test();
        // 调用block。
        int res = bt(10,20);
        NSLog(@"res = %d",res);
        
    }
    return 0;
}
