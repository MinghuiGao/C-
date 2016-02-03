//
//  main.m
//  15-【理解】为自定义的类实现copy操作
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
 为自定义的类实现copy操作。
    1、实现NSCopying协议
    2、实现copyWithZone:方法
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [Person new];
        p1.name = @"zsf";
        p1.age = 100;
        
        Person *p2 = [p1 copy];
        NSLog(@"p1 = %@,p2 = %@",p1,p2);
        
        p2.name = @"fff";
        NSLog(@"p2.name = %@",p2.name);
        
    }
    return 0;
}
