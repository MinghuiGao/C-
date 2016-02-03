//
//  main.m
//  9-【理解】NSValue的介绍和使用
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSValue 的介绍和使用
    1、NSValue是NSNumber的父类，主要用来把指针、结构体等基础类型封装成OC对象，以便能够将它们存到OC的集合中。
    
    注意：
        OC的集合不允许直接存入结构体。
 
    2、对自定义的结构体进行封装：
        将结构体封装成NSValue 使用valueWtihBytes:
        从NSValue中取出结构体的值，使用getValue:
 
 
 */

typedef struct{
    int year;
    int month;
    int day;
} MyDate;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        CGPoint point = CGPointMake(10, 10);
//        NSArray *array = [NSArray arrayWithObjects:point,nil];
        NSPoint nsp = NSMakePoint(10, 10);
        // 存放NSPoint结构体
        NSValue *point = [NSValue valueWithPoint:nsp];
        NSLog(@"NSValue point = %@",point);
        int a = 10;
        int *num = &a;
        // 存放指针类型
        NSValue *pointer = [NSValue valueWithPointer:num];
        
        
        
        NSArray * array = [NSArray arrayWithObjects:point,pointer, nil];
        NSLog(@"array = %@",array);
        
        MyDate date = {1991,1,1};
        
        NSValue *dateValue = [NSValue valueWithBytes:&date objCType:@encode(MyDate)];
        NSLog(@"dateValue = %@",dateValue);
//        NSArray *array2 = [NSArray arrayWithObjects:dateValue ,nil];
        NSArray *array2 = @[dateValue];
        NSLog(@"array2 = %@",array2 );
        
        
        // 取出 date
        MyDate newDate;
        [dateValue getValue:&newDate];
        NSLog(@"newDate year: %d,month:%d,day:%d",newDate.year,newDate.month,newDate.day);
        
        
    }
    return 0;
}
