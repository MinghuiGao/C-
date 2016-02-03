//
//  main.m
//  13-【理解】NSArray 读写文件
//
//  Created by 高明辉 on 16/1/31.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSArray读写文件 
    1、NSArray的数据写入到文件中去
        写入文件的步骤：
            1）先找到一个文件的路径
            2）调用writeToFile:方法
    plist时ios用于持久化存储数据的一种文件格式，全名叫：property list。扩展名是.plist。其内容是XML格式的。
    .plist文件通常在iOS开发中用作存储用户的信息和有关应用的固定的一些信息等。比如内容的分类等。
 
    2、从文件中读取数据到NSArray中 
        1）找到文件路径
        2) 使用NSArray的arrayWithContentOffile:来创建NSArray对象。
        
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[@"zero",@"one",@"two",@"three",@"four"];
        
        NSString *filePath = @"/Users/gaominghui/Desktop/arr.plist";
        
        // NSArray写入数据到文件中。
        BOOL isOK = [array writeToFile:filePath atomically:YES];
        if (isOK) {
            NSLog(@"写入成功");
        }
        
        // 冲文件中读取信息到NSArray中
        NSArray *array2 = [NSArray arrayWithContentsOfFile:filePath];

        NSLog(@"array2 = %@",array2);
        
        // 使用URL 本地文件的URL是以file:// 开头，再加上文件的绝对路径。
        NSURL *url = [NSURL URLWithString:@"file:///Users/gaominghui/Desktop/arr.plist"];
        NSArray *array3 = [NSArray arrayWithContentsOfURL:url];
        NSLog(@"array3 = %@",array3);
        
        
    }
    return 0;
}
