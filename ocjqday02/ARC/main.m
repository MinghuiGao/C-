//
//  main.m
//  ARC
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
/*
    1、arc简介
        arc 是ios5之后增加的新特性，全程是automatic reference counting（自动引用计数）
        
        arc的实现细节：   
            编译器会自动在适当的地方插入 retain release autorelease的语句，编译器自动帮我们插入代码。
        相对于MRC（manual reference counting ）手动引用计数，更智能，更方便。
         
        注意arc是编译器特定，不是运行时特定。只是插入了代码，并不是垃圾回收器。
        
        优点：
            1、消除了手动管理内存的麻烦，
            2、基本上能够避免内存泄漏
            3、编译器还可以帮我们进行一些优化，是mrc做不到的。
    －Xcode默认是arc，在arc下不允许调用release等方法，可以试验。最新版本已经不可见了。
 
    2、arc的使用
        arc的的挥手原则：
            只要有强指针指向当前对象，那么当前对象就不回被回收。
            不在通过计数器来判断对象是否需要释放。
            画图演示。没有强指针指向的时候才回回收对象。
 
        强指针：
            缺省情况下，所有指针都是强指针。
            被__strong修饰的指针。

        弱指针：
            被__weak修饰的指针。
 
            对象如果只被弱指针指向，那么仍然会被回收。
        
        如何在arc中来释放对象呢？
        通过将指向对象的指针置空就可以了。这样原来的对象就没有了强指针指向，就回被回收。
 
    3、是用arc来管理多个对象 
 
        如果一个对象想长期拥有另一个对象，那么可以使用一个强指针，来指向。
 
        人有条狗，狗有一个主人。循环引用的问题。
        两个属性都用强指针，那么就会造成循环引用的，都有强指针指向，所以不会被释放。
        让其中使用弱指针去引用。
 
        注意：
            基础数据类型还是写assign。
    
    4、mrc－》 arc。
        
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc]init];
        
        Dog *dog = [[Dog alloc]init];
        
        p.dog = dog;
//        dog.owner = p;
        dog = nil;
        NSLog(@"p = %@, dog = %@",p,p.dog);
        
    }
    return 0;
}
void testArc1(){
    @autoreleasepool {
        Person *p = [Person new];
        p = nil;//  标示p指向的对象需要被回收。
        p.name = @"zsf";
        
        
    }
}
