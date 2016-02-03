//
//  main.m
//  10-【理解】NSArray 的介绍和基本使用
//
//  Created by 高明辉 on 16/1/31.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSArray的介绍和基本使用
    1、什么是NSArray?
        NSArray是Oc中的数组，，在开发中建议尽量使用NSarray来代替数组。
        注意：
            NSArray智能存放OC对象，并且是有序的。
            不能存储非OC对象，int ,float ,double ,struct,char,enum ,sturct等。
            NSArray 中的内容是不可变的，一旦初始化完毕之后，内容是永远固定的。不能删除也不能添加。
 
    2、创建NSArray的快捷方法
     + (instancetype)array;
     + (instancetype)arrayWithObject:(ObjectType)anObject;
     + (instancetype)arrayWithObjects:(const ObjectType [])objects count:(NSUInteger)cnt;
     + (instancetype)arrayWithObjects:(ObjectType)firstObj, ... NS_REQUIRES_NIL_TERMINATION;
     + (instancetype)arrayWithArray:(NSArray<ObjectType> *)array;
 
    3、NSArray使用的注意事项
        1、可以直接使用NSLog进行输出，并且是以（）包裹内容的。
        2、NSArray中不能存储nil，因为nil是数组的结束标记。nil本质上是0，基础数据类型 不能存储到NSArray中。
 
        3、NSArray array];使用该方法创建的数组永远是空，不能进行更改。
        
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *array = [NSArray array];// 注意创建出来的数组永远是一个空数组，不可改变。
        NSLog(@"array = %@",array);
        
        
        // 常用的创建NSArray的方法
        NSArray *array2 = [NSArray arrayWithObjects:@"one",@"two",nil,@"four",nil];
        // 数组的结束标识是nil ，到nil就结束了，后面的元素不会在放到数组中。
        NSLog(@"%@",array2);
        
        // 还可以用其它的数组来创建一个新的数组
        NSArray *arr3 = [NSArray arrayWithArray:array2];
        NSLog(@"%@",arr3);
        
        
    }
    return 0;
}
