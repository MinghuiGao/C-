//
//  main.m
//  15-【掌握】NSString介绍及基本使用
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSString 的基本介绍及使用
    
    1、NSString是OC中保存字符串的对象。
    2、NSString的三种创建方式
        1）NSString *str = @"hello world.";//  字符串常量
        2) NSString *str = [NSString stringWithFormat:@"my age is :%d",23];
        3) 从文件中读取字符串
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1) 字符串常量   以前是在常量区，这里表明在堆区。
        NSString *str1 = @"hello";
        NSLog(@"str1 = %p",&str1);
        
        NSString *str2 = @"hello";
        NSLog(@"str2 = %p",&str2);
        
        // 2) 使用构造方法来创建 存储在堆区。
        NSString *str3 = [NSString stringWithFormat:@"my age is : %d",23];
        NSLog(@"str3 = %p",&str3);
        
        // 3) 从文件中读取
        
        // I ： 先写入问价中。
        NSString *str4 = @"itcast欢迎你";
        NSError *error;
        BOOL isOk = [str4 writeToFile:@"/Users/gaominghui/Desktop/string.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
        if (isOk) {
            NSLog(@"写入成功");
        }
        
        // II：读取字符串
        NSError *error2;
        NSString *str5 = [NSString stringWithContentsOfFile:@"/Users/gaominghui/Desktop/string.txt" encoding:NSUTF8StringEncoding error:&error2];
        
        // 判断是否读取成功
        if (error2 == nil) {
            NSLog(@"读取成功, str5 = %@",str5);
        }else{
            NSLog(@"error : %@",error2);
        }
        
        
        
    }
    return 0;
}
