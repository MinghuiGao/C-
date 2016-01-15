//
//  main.m
//  4-【掌握】点语法使用注意事项
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    点语法的注意事项
    
    1、使用点语法的前提：
        必须要有set 和get方法。
    2、使用.语法的注意点：
        不能在set方法中使用 点语法 来设置实力变量的值。
        会造成循环调用，最后导致程序崩溃。
    3、点语法不会直接访问实例变量，本质是方法的调用。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p.age2 = 19;
        NSLog(@"%d",p.age2);
    }
    return 0;
}
