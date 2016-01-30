//
//  main.m
//  16-【掌握】使用NSURL读写字符串
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    
    NSURL 读写字符串
    NSURL: 是OC中用于封装URL的一个类。
 
    本地文件的url：file://＋路径。
    使用url写入字符串的步骤：
    1、创建一个NSURL类
    2、调用NSString对象的write
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        1、创建一个NSURL类

        NSURL *url = [NSURL URLWithString:@"file:///Users/gaominghui/Desktop/url.txt"];
        //        2、调用NSString对象的write
        NSString *str = @"你好itcast";
        BOOL isOK = [str writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:nil];
        if (isOK) {
            // 如果写入成功，那么尽兴读取
            NSString *str2 = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
            NSLog(@"读取成功，str2 = %@",str2);
        }
        
    }
    return 0;
}
