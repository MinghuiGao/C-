//
//  main.m
//  4【掌握】类方法易犯的错误
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
/*
    使用类方法时容易犯的错误，避免.
    1、在类方法中不能使用类的实力变量。
    
    2、在类方法中，能否调用对象方法？
        记住调用对象方法的前提：通过对象来调用，也就是必须要先有对象，才能调用对象方法。
        1）自己创建一个对象
        2）由参数传一个
    3、在对象方法中能否调用类方法？
        记住调用类方法的前提：必须要有类，通过类来调用类方法。
    
 */


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num1 = 10;
        int num2 = 20;
        // 调用对象方法sum
        Calulator *cal = [Calulator new];
        NSLog(@"res = %d",[cal sum:num1 andNum2:num2]);
        
    }
    return 0;
}
