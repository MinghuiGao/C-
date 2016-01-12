//
//  main.m
//  18-［理解］OC中的static关键字使用
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    static在OC中不能修饰实力变量，也不能修饰方法。
    只能在。m文件中使用
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        printf("hello \
               world\n");
        //
        printf("hello ""world");
        
    }
    return 0;
}
