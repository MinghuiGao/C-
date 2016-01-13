//
//  main.m
//  3-【掌握】self用在对象方法中
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
 self在对象方法中的使用
    self含义：通过谁调用的指的就是谁。
    tip：OC中打印对象地址的方法：打印一个对象的地址，可以使用％@，也可以使用％p，直接传对象名就可以。
    1、在对象方法中通过self调用其它的对象方法。
    2、在对象方法中通过self来引用实例变量
        
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setAge:19];
        // se
        [p work];
        NSLog(@"p = %@,p = %p",p,p);
        // 从输出的地址相同可以看出 通过p调用的work方法中的self指的就是对象p。
        
        
    }
    return 0;
}
