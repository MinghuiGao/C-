//
//  main.m
//  8-【理解】NSNumber的使用
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSNumber 的使用
    1、介绍
    OC中的NSArray 和NSDictionary 中不能存放基础数据类型。
    如果像要存放的话，需要将基础数据类型封装成对象。
    2、创建NSNumber对象
    NSNumber对象的创建：
        1、NSNumber numberWithInt:
        2、NSNumber numberWithDouble:
    简单的写法：
        @1
        @3.14
        @YES
    3、冲NSNumber中获取基础类型的数据。
    
        通过调用相应基础类型的实例变量的getter方法来获取只读的基础类型的实例变量。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects:@"one",1,3.14 , nil];
//        NSLog(@"%d",array[1]);
        NSMutableArray *mArray = [NSMutableArray array];
        [mArray addObject:1];
        NSLog(@"%d",mArray[0]);
        
        NSNumber *num = [NSNumber numberWithInt:1];
        NSNumber *numBOOL = [NSNumber numberWithBool:YES];
        NSNumber *numDouble = [NSNumber numberWithDouble:3.14];
        NSNumber *numChar = [NSNumber numberWithChar:'a'];
        NSArray *arr2 = [NSArray arrayWithObjects:num,numBOOL,numDouble,numChar,nil];
        NSLog(@"%@",arr2);
        
        NSArray *arr3 = [NSArray arrayWithObjects:@1,@3.14,@YES,@'a',nil];
        NSLog(@"%@",arr3);
        
        NSNumber *n1 = arr3[0];
        NSNumber *n2 = arr3[1];
        
        int n1Value = n1.intValue;
        double n2Value = n2.doubleValue;
        
        NSLog(@"n1Value = %d,n2Value = %.2f",n1Value,n2Value);
        
    }
    return 0;
}
