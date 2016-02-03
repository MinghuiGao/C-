//
//  main.m
//  11-【掌握】集合对象的内存管理2
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
  11-【掌握】集合对象的内存管理 
    在mrc下，自动对加入加入集合的对象的引用计数＋1.在从集合中移除的时候，进行一次release操作。
    在集合销毁的时候，也会对集合内的所有对象进行一次release。
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *mArr = [NSMutableArray array];
        Person *p = [Person new];
        NSLog(@"p rt : %lu",[p retainCount]);
        [mArr addObject:p];
        NSLog(@"p rt : %lu",[p retainCount]);
        
        // 将对象从数组中删除
        [mArr removeObject:p];
        // 注意： 将对象从集合中移除，retainCount 也－1。
        NSLog(@"p: rt = %lu",[p retainCount]);

    
        [p release];
        
        
        
        
    }
    return 0;
}

void test2(){
    
}

void test1(){
    Person *p = [[Person alloc]init];
    
    NSLog(@"p rt : %lu",p.retainCount);
    //        NSMutableArray *mArr = [NSMutableArray array];// 添加到了自动释放池中。
    //        NSMutableArray *mArr = [[NSMutableArray alloc]init];// 不回自动释放，需要手动release。
    NSArray *mArr = @[p];// 这样创建的数组，会自动加入到自动释放池中。
    //        [mArr addObject:p];
    
    NSLog(@"p rt : %ld",p.retainCount);
    
    [mArr release];
    
    [p release];
    
}