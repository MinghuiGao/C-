//
//  main.m
//  3【掌握】函数和对象方法的区别
//
//  Created by 高明辉 on 16/1/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    对象方法和函数：
    
    1、对象方法
        1）对象方法只能放在对象的实现中 @implementation 和 @end之间
        2）对象方法以－开头
        3）对象方法必须通过对象来调用，属于对象，跟对象相关。
 
    2、函数
        0）函数术语整个文件，是C语言中的内容，可以卸载文件的任何位置，但是不能卸载类的声明中，否则编译失败。
        1）在程序中所有的函数都是平行的
        2）函数没有隶属关系
        3）在使用的时候可以直接调用
        4）如果函数写在类的实现中，不能访问类的成员变量。
 
 */

// 在类的外面定义一个函数 ok
//void test(){
//    printf("test \n" );
//}

// 1.写一个类
#pragma mark person类
@interface Person : NSObject
-(void)run;

//// 不能在类的声明中定义函数。编译错误。
//void test(){
//    printf("test \n" );
//}

@end

@implementation Person
{
    @public
    int _age;
}
// 对象方法只能放在类的实现中。
-(void)run{
    NSLog(@"person is running...")  ;
}

// 放在类的实现中是可以。
void test(){
//    printf("test  person age = %d\n" _age );
    // 注意，如果在类的实现中定义函数，是不能访问类的实力变量的。
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 调用函数
        test();//可以直接调用。
        
        // 调用一个对象方法
        Person  *p = [Person new];
        [p run];
        
        
    }
    return 0;
}
