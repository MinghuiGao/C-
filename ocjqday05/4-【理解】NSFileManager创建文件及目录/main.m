//
//  main.m
//  4-【理解】NSFileManager创建文件及目录
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    1、创建文件
        - (BOOL)createFileAtPath:(NSString *)path contents:(NSData *)data attributes:(NSDictionary *)attr;
 
 
    2、创建目录
 
        - (BOOL)createDirectoryAtPath:(NSString *)path withIntermediateDirectories:(BOOL) createIntermediates attributes:(NSDictionary *)attributes error:(NSError **)error;
 
        withIntermediateDirectories : 如果穿入YES，会创建所有的中间文件夹。
    3、拷贝
        - (BOOL)copyItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError **)error;
        注意：
            如果目标目录存在同名的文件，那么拷贝失败
    4、剪切
 
    5、删除
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *filePath = @"/Users/gaominghui/Desktop/createFolder/copy.txt";
        // 拷贝copy.txt到subFolder中去
        NSFileManager *fileMgr = [NSFileManager defaultManager];
        BOOL isCopySuccess = [fileMgr copyItemAtPath:filePath toPath:@"/Users/gaominghui/Desktop/createFolder/subFolder/copy.txt" error:nil];
        if (isCopySuccess) {
            NSLog(@"拷贝成功");
        }else{
            NSLog(@"拷贝失败");
        }
    }
    return 0;
}
/**
 创建目录
 */
void test2(){
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    NSString *path = @"/Users/gaominghui/Desktop/createFolder/subFolder/";
    BOOL isCreatedSuccess = [fileMgr createDirectoryAtPath:path withIntermediateDirectories:NO attributes:nil error:nil];
    if (isCreatedSuccess) {
        NSLog(@"创建成功");
    }else{
        NSLog(@"创建失败");
    }
}
/**
 创建文件
 */
void test1(){
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    NSString *path = @"/Users/gaominghui/Desktop/createFile.txt";
    // 生成文件的内容
    NSString *content = @"hello world!\n 你好世界！";
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    BOOL isCreatedSuccess = [fileMgr createFileAtPath:path contents:data attributes:nil];
    if (isCreatedSuccess) {
        NSLog(@"创建成功");
    }
}
