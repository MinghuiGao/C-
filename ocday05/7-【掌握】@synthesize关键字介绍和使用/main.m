//
//  main.m
//  7-【掌握】@synthesize关键字介绍和使用
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    @synthesize关键字
 
    1、介绍
        @synthesize，也是一个编译指令
        作用：用来简化getter和setter方法的实现。
    2、@synthesize的使用
        使用格式：
            @synthesize ［property的名称］;
        
        工作原理
            @synthesize name;
            1) 生成一个私有属性
                在@implementation 中生成一个名称和Property的名称一样的属性
                属性的类型：和@property的类型相同
                属性的名称：和@synthesize的名称一致，也和@Property的名称一致。
            2）在去生成getter和setter方法
 
                将@synthesize替换成下面的代码：
                -(void)setName:(NSString *)name{
                    self->name = name;
                }
                -(NSString *)name{
                    return self->name;
                }
                注意：
                    setter方法会将传入的值赋值给私有属性，而不是实例变量。
                    getter方法会获取私有属性的值，而不是实例变量的值。
    3、@synthesize的注意事项
        1）@synthesize使用的位置：@implementation 和@end之间，并且在｛｝外面。
        2）@synthesize的名称必须和.h文件中的@property名称一致。
        3）注意@synthesize，不需要说明类型。
        4）可以批量实现，不分类型。
            @synthesize height,weight,name,age;
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new ];
        p.name = @"张四丰";
        p.age = 101;
        p.height = 1.8f;
        p.weight = 100.0f;
        
        NSLog(@"name :%@,age : %d,height : %.2f,weight : %.2f",p.name,p.age,[p height],[p weight]);
    }
    return 0;
}
