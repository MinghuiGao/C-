//
//  main.m
//  8【掌握】OC和C差异学习(一)
//
//  Created by 高明辉 on 16/1/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

/*
    Oc中增加的一种循环语句
    forin 快速枚举（快速地做一个遍历）
    作用：
        简化了for 循环遍历数组的语法。
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 定义一个数组
        NSArray *arr = @[@"one",@"wto",@"zhaosi"];
        for (NSString *str in arr) {
            NSLog(@"%@",str);
        }
    }
    return 0;
}
