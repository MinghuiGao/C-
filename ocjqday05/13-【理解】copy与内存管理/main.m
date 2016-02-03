//
//  main.m
//  13-【理解】copy与内存管理
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 copy与内存管理
    1、对象拷贝之后的引用计数问题
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = [NSString stringWithFormat:@"fengjie"];
        NSLog(@"str rc : %lu",[str retainCount]);
              
        NSString *strCopy = [str copy];// 生成一个不可变的副本
        NSLog(@"stcCopy rc : %lu",strCopy.retainCount);
        
        
    }
    return 0;
}
