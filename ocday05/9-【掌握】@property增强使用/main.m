//
//  main.m
//  9-【掌握】@property增强使用
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    1、使用@property和@synthesize来简化实例变量的getter和setter方法是早Xcode4.4之前。
        步骤：
            1、使用@property来自动生成方法的声明
            2、使用@synthesize来生成方法的实现。
 
   2、 @property增强使用（添加实例变量的终极解决方案）
 
        使用方式：
            @property 类型 名称；
            一步搞定。
        原理：
            在.h中写了@property int age;之后
            会自动做如下几件事。
            1、自动生成一个私有属性_age,
            2、生成getter和setter方法的声明
            3、在@implementation中自动生成getter和setter方法的实现。
    3、注意事项：
        1、@property int age;写在.h文件中@interface和@end之间，｛｝之外。
        2、@property的名称不要加下划线，因为自动生成的时候，系统会添加。
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p.name = @"zsf";
        p.age = 101;
        p.height = 1.8f;
        p.weight = 130.0f;
        
        NSLog(@"name = %@,age = %d,height = %.2f, weight = %.2f",p.name,p.age,p.height,p.weight );
        
    }
    return 0;
}
