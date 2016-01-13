//
//  main.m
//  5-【理解】self修饰变量
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
/* 
    self引用实例变量
        由谁调用的，那么self指的就是谁。
    注意：
        实例变量是一个全局变量。
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [Dog new];
        [dog setName:@"bigyellowdig"];
        
        NSLog(@"name = %@",[dog name]);
    }
    return 0;
}
