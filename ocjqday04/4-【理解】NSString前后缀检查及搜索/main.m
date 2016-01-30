//
//  main.m
//  4-【理解】NSString前后缀检查及搜索
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSString 前缀，后缀检查
    
    前缀 ： prefix
 
    后缀 ： suffix 或者 postfix
    
    1、判断一个字符串的前缀
        一个网址通常以http://开头。
        使用NSString 的对象方法：hasPrefix来检查是否包含指定的字符串。
     
        BOOL isWebSite = [str1 hasPrefix:@"http://"];
    
    2、判断一个字符串的后缀

        使用NSString的对象方法： hasSuffix
 
        BOOL isPng = [fileName1 hasSuffix:@".png"];
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"http://www.itcast.com";
        BOOL isWebSite = [str1 hasPrefix:@"http://"];
        if (isWebSite) {
            NSLog(@"是一个网址，访问之。");
        }else{
            NSLog(@"不是一个网址");
        }
        
        
        // 判断一个文件是否是.png文件
        NSString *fileName1 = @"pic.png.png2";
        NSString *fileName2 = @"pic.jpg";
        BOOL isPng = [fileName1 hasSuffix:@".png"];
        BOOL isJpg = [fileName2 hasSuffix:@".jpg"];
        if (isPng) {
            NSLog(@"是一个.png文件");
        }else{
             NSLog(@"不是一个.png文件");
        }
        if (isJpg) {
            NSLog(@"是一个jpg文件");
        }else{
            NSLog(@"不是一个jpg文件");
        }
        
    }
    return 0;
}
