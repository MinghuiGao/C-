//
//  main.m
//  14-【理解】@property中的copy关键字
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
 @prpperty 中的copy关键字
    为了防止在给对象的属性赋值后，改变变量的值会影响对象的属性。可以使用copy关键字，来修饰@property。
    表示在给该属性赋值时，采用的是拷贝副本的方式赋值。
    
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *name = [NSMutableString stringWithString:@"fengjie"];
        Person *fengjie = [Person new];
        fengjie.name = name;
        NSLog(@"fengjie.name  = %@",fengjie.name);
        
        // 修改了NSMutableString对象的值。
        [name appendString:@"fu"];
        NSLog(@"name = %@",name);
        NSLog(@"fengjie.name = %@",fengjie.name);
        // 结果fengjie对象中的name属性也跟着改变了。
        // 原理：因为Person类中的name属性是一个指针，直接指向了NSMutableString 的name对象。
        NSLog(@"name = %p,fengjie.name = %p",name,[fengjie name]);// 两个对象的地址是一样的，因此是同一块内存空间。
        
        
    }
    return 0;
}
