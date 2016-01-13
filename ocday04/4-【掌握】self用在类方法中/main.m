//
//  main.m
//  4-【掌握】self用在类方法中
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
/*
    self在类方法中的使用
        
        self： 通过谁来调用，在方法中self指的就是谁。
 
    
        在类方法中，可以通过self来调用本类中其它的类方法。也可以直接通过类名来调用。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 调用类方法
        Car *car =  [Car new];
        // 打印car对象的地址。
        NSLog(@"car = %@,car = %p",car,car);
        [Car run];// self 的地址
        // 万事万物皆对象，那么类也是一个对象。
        Class clz  = [Car class];
        NSLog(@"Car = %@,Car = %p",clz,clz);
        
        
    }
    return 0;
}
