//
//  main.m
//  2-【理解】NSFileManager介绍和用法
//
//  Created by 高明辉 on 16/2/2.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSFileManager的介绍和使用
    1、什么是NSFileManager？
        就是OC中用来管理文件系统的一个类。可以用它来进行常见的文件、文件夹操作。
        NSFileManager使用了单例模式。
        通过defaultManager 方法来获取实例。
    2、FileManager 的基本使用
        判断文件夹是否存在
 
        判断文件是否存在
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSLog(@"fileManager = %@",fileManager);
        NSFileManager *fm = [NSFileManager new];
        NSLog(@"fm = %@",fm  );
        NSFileManager *fm2 = [[NSFileManager alloc]init];
        NSLog(@"fm2 = %@",fm2);
        NSFileManager *fm3 = [NSFileManager defaultManager];
        NSLog(@"fm3 = %@",fm3);
        
        // 判断一个文件夹或者文件是否存在
        NSString *path = @"/Users/gaominghui/Desktop/aaabb.txt";
        BOOL isExisted;
        isExisted = [fm fileExistsAtPath:path];
        
        // 判断一个文件夹是否存在
        path = @"/Users/gaominghui/Desktop/test";
        
        [fm fileExistsAtPath:path isDirectory:&isExisted];
        
        // 判断文件或文件夹是否可读
        
        BOOL isReadable = [fm isReadableFileAtPath:path];
        NSLog(@"isReadable = %@",isReadable?@"yes":@"no");
        
        // 判断文件或文件夹是否可写
        BOOL isWritable = [fm isWritableFileAtPath:@"/usr/"];
        NSLog(@"iswriteable = %@",isWritable ? @"yes":@"no");
        
        
        // 判断文件是否可以删除
        BOOL isDeletable = [fm isDeletableFileAtPath:path];
        NSLog(@"isDeletable = %@",isDeletable?@"yes":@"no");
        
        
        
        NSLog(@"isExisted = %@",isExisted ? @"yes":@"no");
        
        
    }
    return 0;
}
