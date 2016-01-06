//
//  main.m
//  6【掌握】OC中注释及@符号使用
//
//  Created by 高明辉 on 16/1/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>


//    1、OC中@符号的使用
//        NSString 标示OC中的字符串类型
//        1）加在C语言字符串之前：@"hello world"  －－> 涌来标示oc的字符串
//        2）标示OC中的关键字：@interface @end 等，标示OC的关键字，
//            注意：在OC中很多关键字都是以@开头。
// 
//    2、OC中的注释
//        标示注销和解释：是写给程序员看的，用于程序员之间的交流
//        OC中提供了三种注释方式：
//        1）单行注释：// 注释内容
//        2) 多行注释：/* 多行注释内容 */
//        3）文档注释：/**
//                    *内容
//                    */
//           作用：在写方法的时候，进行文档注释，可以在调用的时候看到对方法的说明。
//                    包括功能说明，参数类型，返回值类型等。
//           注意：文档注释不能少个＊。


/**
 功能：打印名称
 参数：空
 返回值：空
 
 */
void prtName(){
    NSLog(@"良辰必有重谢!");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 比哦啊是OC的字符串
        // NS Next Softwear 前缀
        NSString *str = @"良辰必有重谢";
        prtName();
        
        
    }
    return 0;
}
