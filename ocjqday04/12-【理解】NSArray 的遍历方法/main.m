//
//  main.m
//  12-【理解】NSArray 的遍历方法
//
//  Created by 高明辉 on 16/1/31.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 NSArray遍历
    依次访问数组中的元素
 
    1、通过NSArray的下标来遍历
     两种访问数组元素的形式：
     1、[array objectAtIndex:index];
     2、通过下表,array[index];
    2、快速遍历
        使用增强for循环 for in。
 
    3、使用block遍历数组
        调用数组的enumerateObjectsUsingBlock:方法来进行遍历，
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[@"zero",@"one",@"two",@"three"];
        [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            // obj:就时当前遍历到的数组元素。
            // idx:当前元素的索引号
            // stop: 是否停止遍历
            
            NSLog(@"array[%ld] = %@",idx,obj);
            if (idx == 2) { // 遍历到下标位2的元素的时候，停止遍历
                *stop = YES;
            }
        }];
    }
    return 0;
}
/*
 使用增强for循环来遍历数组
 */
void test2(){
    // 快速遍历
    NSArray *array = @[@"zero",@"one",@"two",@"three"];
    for (NSString *str in array) {// str 存储的是每次迭代时存放的数组元素
        NSLog(@"%@",str);
    }
}
/*
 使用下标法来遍历数组。
 */
void test1(){
    NSArray *array = @[@"zero",@"one",@"two",@"three"];
    NSInteger len = array.count;
    for (int i = 0; i < len; i++) {
        NSLog(@"array[%d] = %@",i,array[i]);
        //            NSLog(@"array[%d] = %@",i,[array objectAtIndex:i]);
    }
}
