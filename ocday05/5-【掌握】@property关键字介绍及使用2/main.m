//
//  main.m
//  5-【掌握】@property关键字介绍及使用2
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    @property关键字
 
    1、介绍
        在给类的属性声明setter和getter方法时，如果属性多，那么写声明非常繁琐。
        @property 作用：自动生成属性的getter和setter方法 的声明。
        注意：@property 是一个编译器的指令。
    2、@property 的使用
        使用格式：
            @property  类型 名称；
 
            类型：属性的类型，setter方法的形参的类型，getter方法的返回值类型。
            名称：建议使用去掉下划线的属性名，因为它会影响到生成的方法名。
        工作原理：
            @property，在编译的时候，会自动生成相应的getter和setter方法的声明。
            注意，只生成声明！
            @property int age;
                ｜ 在编译的时候，编译器会替换成下面的代码。
                \/
            -(void)setAge:(int)age;
            -(int)age;
    3、注意事项
        1、@property的位置：在@interface和@end之间，并且在｛｝之外。
        2、@property的名称，建议使用去掉下划线的属性名
        3、注意@property是一个编译器指令，不是代码，执行是在编译阶段。
        4、相同类型时，可以批量声明。
    
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new ];
        p.name = @"张三丰";
        p.age = 101;
        p.height = 1.8f;
        p.weight = 100.0f;
        
        NSLog(@"name :%@,age : %d,height : %.2f,weight : %.2f",p.name,p.age,[p height],[p weight]);
    }
    return 0;
}
