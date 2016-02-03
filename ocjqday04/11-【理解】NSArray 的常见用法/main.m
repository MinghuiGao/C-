//
//  main.m
//  11-【理解】NSArray 的常见用法
//
//  Created by 高明辉 on 16/1/31.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
1、 NSArray的常见用法
    - (NSUInteger)count;
	获取集合元素个数	
 
	- (id)objectAtIndex:(NSUInteger)index;
	获得index位置的元素 注意index从0开始。
 
	- (BOOL)containsObject:(id)anObject;
	是否包含某一个元素
 
	- (id)lastObject;
	返回最后一个元素
 
	- (id)firstObject;
	返回第一个元素
 
	- (NSUInteger)indexOfObject:(id)anObject;
	查找anObject元素在数组中的位置(如果找不到,返回NSNotFound）
	
	- (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range;
	在range范围内查找anObject元素在数组中的位置 。
2、使用简写的方式来创建NSArray。
    NSArray *array = [NSArray arrayWithObjects:@"",@"",nil];
    使用简写的方式来创建：
    NSArray *array = @[@"one",@"two",@"three"];
    使用下表去访问数组元素：
    [array objectAtIndex:0];
    写成： 
        array[0];
 3、NSArray的使用注意事项
    
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[@"one",@"two",@"three"];\
        // 访问第0个元素的简便写法
        NSLog(@"%@",array[0]);
        
        
        
    }
    return 0;
}

void test1(){
    NSArray *array = [NSArray arrayWithObjects:@"zero",@"two",@"three",@"four",@"five", nil];
    NSLog(@"array 元素个数: %ld",array.count);
    NSLog(@"array 元素个数: %ld",[array count]);
    
    NSLog(@"%@",[array objectAtIndex:1]);// 注意index从0开始。
    
    BOOL containsOne = [array containsObject:@"one"];
    if (containsOne) {
        NSLog(@"包含 one");
    }else{
        NSLog(@"不包含");
    }
    
    id lastObj = [array lastObject];
    NSLog(@"last Object : %@",lastObj);
    
    
    id firstObj = [array firstObject];
    NSLog(@"first Object : %@",firstObj);
    
    //  查找一个元素，并且返回改元素在数组中的位置。
    NSUInteger index = [array indexOfObject:@"four－"];
    // 如果找不到，返回NSNotFound
    NSLog(@"four's index = %ld",index);
    
    // 在某个范围内查找一个元素，并且返回该元素在数组中的位置。
    NSRange range = NSMakeRange(3,2 );
    NSInteger index2 = [array indexOfObject:@"three" inRange:range];
    NSLog(@"index2 = %ld",index2);
}
