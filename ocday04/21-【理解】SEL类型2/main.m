//
//  main.m
//  21-【理解】SEL类型2
//
//  Created by 高明辉 on 16/1/22.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    SEL类型
 
    1、什么是SEL类型？
        是一个用来表示方法类型的 数据类型。
    2、[p run];
        当痛过对象来调用方法时，系统会先把这个方法转换成SEL，然后在用这个SEL到类的方法列表中去进行轮询比较。
    3、如何手动获取一个SEL类型的对象
        使用@selector(run);来进行包装，返回一个SEL类型的对象。
    4、如何通过方法名来调用方法：
        通过对象的performSelector:(SEL) sel ; 方法。
    5、什么时IMP
        IMP代表一个方法的实现。类似于函数指针。
        通过方法名获取方法的IMP：
            1、获取方法的SEL对象
                NSSelectorFromString:@"run"];
 
 
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //正常调用Person的类型方法
        Person *p = [Person new];
        [p run];
        
        SEL runMethod = @selector(run);
        [p performSelector:runMethod ];
        
        // 合并起来写就是：
        [p performSelector:@selector(run)];
        
        //
            SEL rumM = NSSelectorFromString(@"run");
        [p performSelector:rumM];
        
        // 获取方法的实现IMP
            SEL runM2 = NSSelectorFromString(@"run");
            IMP runM2Imp = [p methodForSelector:runM2];
        runM2Imp();// --> [p run];
    }
    
    return 0;
}
