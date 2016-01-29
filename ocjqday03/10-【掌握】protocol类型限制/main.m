//
//  main.m
//  10-【掌握】protocol类型限制
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Model.h"
#import "Girl.h" 
#import "Teacher.h"
/*
    protocol类型的限制
    1、
        在用一个id变量来接收对象的时候，我们可以来限制变量接收对象必须要实现某个协议。
        用法:
            id<协议名> obj ;
     
        作用：
            如果给id加了协议限制，那么该id变量只能接收采纳了这个协议的类的实例对象。
    2、给父类对象天假协议限制
        Person<househlod> *gf;
        作用：
            限制了gf接收的对象，必须采纳了household协议。
            否则编译器会报警告。
 
    3、id 和instancetype的区别：
        1、instancetype只能作为方法的返回值
        2、id可以作为方法或者函数的返回值、参数类型，也能用来定义变量。
        3、instancetype可以精确地限制返回值的具体类型。
 
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p;
        p = [Model new];
        [p eat];
        
        p = [Teacher new];
        p = [Girl new];
        
        
        // 给Person对象加一个协议限制。
        Person<househlod> *gf;
//        gf = [Model new];
        gf = [Girl new];
        
        [gf wash];
        
        
        
        
    }
    return 0;
}

void test(){
    id gf;
    gf = [Model new];
    
    gf = [Teacher new];
    
    gf = [Girl new];
    // 没有类型限制的时候，id可以接受任何类型的对象。
    
    
    // 执行gf变量只能接收实现了household 协议的变量。
    id<househlod> girlfriend;
    
    //        girlfriend = [Model new];
    //        girlfriend = [Teacher new];
    // 这时girlfriend 只能接收采纳了 household协议的对象。
    girlfriend = [Girl new];
    
    // 谁用girlfriend变量来调用household的中的方法时有提示。
    [girlfriend  wash];
    [girlfriend cook];
    
}
