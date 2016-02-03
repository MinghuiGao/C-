//
//  main.m
//  8-【理解】NSMutableString 介绍和使用
//
//  Created by 高明辉 on 16/1/31.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSMutableString
    
    NSString：
        OC中的字符串类，标示一个内容不可变的字符串对象。
        NSString *str ;
        str 是一个指针变量，保存的是@“abc”对象的地址。
        str可以指向心的字符串对象。但是@"abc"这个NSString对象的内容是不能改变的。
    NSMubtableString:
        OC中的字符串类，表示一个内容可以改变的字符串对象。NSMutableString对象的内容是可以编辑的。
        （追加，删除，替换等）。
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 定义一个字符串
        NSString *str = @"abc";
        
        NSLog(@"str = %p",str);
        str = @"itcast";
        NSLog(@"str = %p",str);
        
        // 可变字符串
        NSMutableString *mStr = [NSMutableString string];
        NSLog(@"mStr = %p,mStr = %@",mStr,mStr);
        [mStr appendString:@"hello world."];
        NSLog(@"mStr = %p,mStr = %@",mStr,mStr);
        // 内容改变了，但是地址是同一个地址，说明可以对象的内容是可以编辑的。
        
    }
    return 0;
}
