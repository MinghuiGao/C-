//
//  main.m
//  2-【了解】self和super关键字介绍
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
 self 是指当前的对象，也就是自己的意思。通过水调用的就指谁。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个对象
        Person *p = [[Person alloc] init]; // 相当于new。
        [p work];
    }
    return 0;
}
