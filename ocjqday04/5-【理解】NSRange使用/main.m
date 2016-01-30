//
//  main.m
//  5-【理解】NSRange使用
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 
    NSRange 的介绍和使用
    1、什么是NSRange
 
         typedef struct _NSRange {
            NSUInteger location;
            NSUInteger length;
         } NSRange;
    
        是一个结构体。
        NSUInteger ： unsigned long
         NSUInteger location; // 范围起始的前一个位置
         NSUInteger length;   // 范围的长度。
 
    2、如何定义以歌NSRange？
        1）NSRange range = {1,2};
        2） NSRange range2 ;
         range2.location = 10;
         range2.length = 5;
        3）NSRange range3 = {.length = 19,.location = 1};
        4）NSRange range4 = NSMakeRange(10, 100);
 
    3、在字符串中查找置顶内容出现的位置
        调用NSString的对象方法：rangeOfString
        
        当没有找打的时候，会返回一个location非常大的NSRange。NSNotFound
    
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 在字符串中查找指定内容第一次出现的位置。
        NSString *str1 = @"www.itcast.com";
        NSRange range = [str1 rangeOfString:@"itcast"];
        if (range.location != NSNotFound) {// 当没有找打的时候，会返回一个location非常大的NSRange。
            NSLog(@"没有找到");
        }
        NSLog(@"range : loc = %lu , len = %lu",range.location,range.length);
        
        
    }
    return 0;
}

void test1(){
    NSRange r;
    
    // 在定义的时候直接赋值。
    NSRange range = {1,2};
    NSLog(@"location = %lu,length = %lu",range.location,range.length);
    // 先定义，在赋值。
    NSRange range2 ;
    range2.location = 10;
    range2.length = 5;
    NSLog(@"location = %lu,length = %lu",range2.location,range2.length);
    
    NSRange range3 = {.length = 19,.location = 1};
    NSLog(@"location = %lu,length = %lu",range3.location,range3.length);
    
    // 调用NSRangeMake来创建一个NSRange。
    NSRange range4 = NSMakeRange(10, 100);
    NSLog(@"location = %lu,length = %lu",range4.location,range4.length);
}
