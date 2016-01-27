//
//  main.m
//  分类Category
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person+GMH.h"

/*
    分类 Category 类目，类别，分类，
    1、如何在不修改Person类的前提下给Person类增加新的方法呢？
 
    分类的语法格式：
        分类也是类，分为声明喝实现：
        // 声明 
        @interface 类名 (分类名称)
        // 要扩充的方法的声明
        @end
     
        // 实现
        @implementation 类名(分类名称)
        // 要扩充的方法的实现
        @end
    2、分类的使用
        分类的文件名默认使用"类名＋分类名"
        在分类中要包含原来类的声明。#import "Person.h"
     
        在使用的时候，需要导入分类的头文件，如果只包含原来类的头文件，则无法调用分类中的方法。
        在分类中扩充的方法仍然是属于原来类的方法。在调用的时候，是一样的。
    3、分类使用的注意点：
        1） 分类中只能扩充方法，不能扩充成员变量。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p run];
        // 打印的是Person类的对像调用了run方法，因此在分类中扩充的方法仍然是属于原来类的方法。在调用的时候，是一样的。
        p.age = 10;
    }
    return 0;
}
