//
//  main.m
//  3-【理解】NSFileManager获取子目录
//
//  Created by 高明辉 on 16/2/2.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 
    1、访问文件的属性
        attributesOfItemAtPath:
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fManager = [NSFileManager  defaultManager];
        
        NSString *path = @"/Users/gaominghui/Desktop/test";
        
        // 访问文件的属性
        NSError *error;
        NSDictionary<NSString *, id> *attrs = [fManager attributesOfItemAtPath:path error:&error];
        NSLog(@"attrs = %@",attrs);
        if (error != nil) {
            NSLog(@"error : %@",error);
        }
        
        // 获取某个路径下的子目录列表 包括文件和文件夹
        NSArray<NSString *> *subPaths = [fManager subpathsAtPath:path];
        NSLog(@"subPaths = %@",subPaths);
        
        
        // 以非递归的方式，获取路径下的内容。只会获取子级目录。
        subPaths = [fManager contentsOfDirectoryAtPath:path error:&error];
        if (error == nil) {
            NSLog(@"subPaths = %@ ",subPaths);
        }else {
            NSLog(@"error : %@",error)  ;
        }

        // 获取文件内容
        NSString *filePath = @"/Users/gaominghui/Desktop/test/aa.txt";
        NSData *data = [fManager contentsAtPath:filePath];
        NSLog(@"data = %@",data);
        NSLog(@"data length = %lu",data.length );
        void *bytes = data.bytes;
        printf("%s",bytes);
        
        for (int i = 0; i < data.length; i++) {
            printf("%d\t",bytes+i);
        }
    }
    return 0;
}
