//
//  main.m
//  17-[理解］方法重载问题
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    方法重载的含义
        OC中没有方法的重载！
 
 
 */
@interface Person : NSObject

-(void)test:(int)num;
//-(void)test:(float)num; // 报错！
-(void)test:(int)num2; // 注意，如果只是方法的形参名不同，那么，被当成多次定义，不报错，编译器忽略重复的声明。


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
