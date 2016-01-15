//
//  main.m
//  3-【掌握】点语法介绍和使用
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    1、传统的setget方法。

    2、点语法
        点语法的前提：
            必须保证类中有set和get方法，并且符合规范。
        格式：
            对象.去掉下划线的实例变量名
        使用点语法和使用set get 方法效果是一样的，那为什么呢？
        点语法特点：
            是编译器的特性，在编译的阶段，进行了代码的替换。
            使用set和get方法将.语法的部分进行了替换。
        替换规则：
            如果出现在 赋值运算符＝ 的左侧，那么就会替换成set方法
            如果出现在 ＝ 的右侧（或者没有赋值运算符）那么就会替传承get方法。
    3、点语法的验证、
        注意：p.name不是直接访问了实例变量，而是调用了方法。
－
    
 */
int main(int argc, const char * argv[]) {
    Person *p = [Person new];
//    [p setName:@"张三疯"];
    p.name = @"张四封";// 在编译的时候，将这句代码替换成了[p setName:@"张四疯"];
//    NSLog(@"姓名：%@ ",[p name]);
    NSString *name = p.name;// 在编译的时候，将p.name 替换成了[p name];
    NSLog(@"姓名： %@",name);
    p.name;// 这样也是替换成get方法。
    
    

    
    return 0;
}
