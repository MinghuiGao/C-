//
//  main.m
//  8-【掌握】protocol概念及基本使用
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    protocol：协议，相当于一个功能规范的约定。
    
    比如：必须要提供何种功能的约定。
    
    使用步骤：
    1、定义协议
        @protocol 协议名称 
    
        @end
        注意：
            1、默认遵守<NSObject>协议。就跟所有的类都继承自NSObject一样。
            2、协议定义在.h文件中。
 
    @protocol base 
    -(void)run;
    -(void)eat;
    @end
 
    2、遵守协议
         创建一个Person类，导入base.h
        #import "base.h"
        @interface Person :NSObject <base>
        @end
    
    3、实现协议中的方法
        在Person.m中
         @implementation Person
         
         -(void)eat{
         NSLog(@"人会吃");
         }
         -(void)run{
         NSLog(@"人会跑");
         }
         @end
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p eat];
        [p run];
        [p work];
    }
    return 0;
}
