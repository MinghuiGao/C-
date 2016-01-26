//
//  main.m
//  提供一个快速创建病初始化对象的方法
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    在快速创建对象的时候，进行属性的初始化。
    
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[[Person alloc]initWithName:@"张三丰"] autorelease];
        
        Person *p1 = [Person personWithName:@"张思风"];
        
        [p show];
        [p1 show];
        
        NSString *str = @"";
        NSString *str1 = [[[NSString alloc]init]autorelease];
        NSString *str2 = [NSString stringWithFormat:@"我叫%@",@"张无风"];
        
        
    }
    return 0;
}
