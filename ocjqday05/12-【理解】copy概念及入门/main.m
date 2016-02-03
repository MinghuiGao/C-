//
//  main.m
//  12-【理解】copy概念及入门
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
     copy概念
    1、copy就是拷贝，也就是制作一个副本的意思。
        在OC中，拷贝操作，相当于将对象制作了一个副本，这样修改原对象的内容不会影响到副本，反之亦然。
        拷贝操作分为两种：copy   和  mubtableCopy
        copy： 制作一个不可变的副本。
        mutableCopy : 制作一个可变的副本。
        
        注意：
            能够进行copy 和 mutablCopy的前提是类实现了NSCopy和NSMutableCopy协议。
        
    
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *name = @"fengjie";
        NSMutableString *nameCopy = [name copy];// copy生成的是不可变的副本。
//        [nameCopy appendString:@" sexy"];
        
        NSMutableString *mNameCopy = [name mutableCopy];// mutableCopy生成的是可变的副本。
        [mNameCopy appendString:@" hot "];
        NSLog(@"mNameCopy : %@",mNameCopy);
        
        Person *p = [Person new];
        Person *p2 = [p copy];
        NSLog(@"p = %@, p2 = %@",p,p2);// 在内存中的地址，是一样的，属于浅拷贝，公用一份内存空间。
        Person *newP2 = [p mutableCopy];// mutableCopy生成的是可变副本，属于深拷贝，副本和原对象在内存中的地址是不同的。
        NSLog(@"p = %@,newp2 = %@",p,newP2);
        
        
    }
    return 0;
}
