//
//  main.m
//  2-【掌握】block的typedef
//
//  Created by 高明辉 on 16/1/27.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    1、typedef：给类型起个别名
        typedef int INT;
        INT a = 10;
    2、typedef给函数指针起别名。
        函数指针：指向一个函数的指针。
        指针函数：返回类型为指针的函数。
 
    3、使用typedef给block类型起别名
         typedef int (^MyBlockType)(int a, int b);
         MyBlockType就是返回值为int，并且有两个int类型参数的block类型的别名。
 */
void test1();
/**
 求两个整数的最大值
 */
int max(int a, int b){
    return a > b ? a : b;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 定义一个block
        int (^myBlock)(int a, int b);
        // 给block类型的myBlock变量赋值。
        myBlock = ^(int a ,int b){
            return a > b?a:b;
        };
        NSLog(@"res = %d",myBlock(10,50));
        
        //  使用typedef来给block类型起别名。
        // MyBlockType就是返回值为int，并且有两个int类型参数的block类型的别名。
        typedef int (^MyBlockType)(int a, int b);
        
        MyBlockType mbt;// mbt是一个block变量。
        mbt = ^(int a,int b){
            return a+b;
        };
        NSLog(@"%d",mbt(10,20));

    }
    return 0;
}

// 回顾typedef来给一个函数指针起别名
void test3(){
    typedef int (*p)(int a, int b);
    // 这时候的p是一个类型，
    //        p = max; // 用p指向一个函数，报错，因为p不是一个变量。
    p fun;// 定义了一个p类型的变量fun，fun是一个函数指针。
    fun = max;
    int res = fun(10,30);
    NSLog(@"res = %d",res);
}

// 回顾函数指针
void test2(){
    int res = max(10, 20);// 通过函数名调用，函数名代表存放函数的地址。
    NSLog(@"res = %d",res);
    // 函数指针
    // 定义了一个函数指针，指向了一个有两个int参数，并且返回值类型为int的函数。
    // p是一个指针变量。
    int (*p)(int a, int b);
    p = max;
    res = p(10,40);//  通过函数指针来调用函数。
    NSLog(@"res = %d",res);
}
// 回顾typedef的功能
void test1(){
    // 使用typedef来给基础类型起别名
    typedef int I ;
    I a = 10;
    NSLog(@"a = %d ",a);
    

}
