//
//  main.m
//  7-【掌握】block使用技巧及注意
//
//  Created by 高明辉 on 16/1/28.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    block使用的技巧及注意事项
    1、block的快速提示：收入inlineBlock
 
    2、在block作为函数的参数时，穿入block时，要将block的返回值类型写上。
 
    3、在block作为函数参数时，声明声明block的时候，把星灿明带上。
 
 
 */
typedef int (^BlockType)(int  ,int );

void test(int(^myBlock)(int x ,int y)){
    
    int res = myBlock(10,20);
    NSLog(@"res = %d",res);
    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 定义了一个block
        int(^myBlock)(int x ,int y) = ^(int x, int y) {
            return x + y;
        };

//        test(^int(int x, int y){
//            return x > y ? x : y;
//        });
        test(^(int x, int y){
            return x + y;
        });

        test(^int(int x, int y) {
            return x*y;
        });
        
    }
    return 0;
}
