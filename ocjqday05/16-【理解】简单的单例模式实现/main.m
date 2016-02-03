//
//  main.m
//  16-【理解】简单的单例模式实现
//
//  Created by 高明辉 on 16/2/4.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YHDD.h"
/*
    简单的单例的实现
    单例模式，保证全局只有一个实例，可以用于其他客户类来共享资源。
    
    实现方法：
        1）某个类只能有一个实例
        2）这个实例只能有自己创建
        3）通过固定的类方法来创建该实例
            +(instancetype)shareInstance;
        4）实现固定的方法来保证该实例的唯一性。
         +(id)allocWithZone:(NSZone *)zone
         -(id)copyWithZone:(NSZone *)zone
        在mrc下覆盖下面方法的实现。
             -(id)retain
             -(NSUInteger)retainCount
             -(oneway void)release
             -(id)autorelease 
 
         
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        YHDD *yhdd = [YHDD shareInstance];
        yhdd.name = @"玉皇大帝";
        yhdd.age = 50000;
        
        YHDD *y2 = [YHDD new];
        NSLog(@"yhdd = %@,y2 = %@",yhdd,y2);
        
        YHDD *y3 = [[YHDD alloc] init];
        NSLog(@"y3 = %@",y3);
        
    }
    return 0;
}
