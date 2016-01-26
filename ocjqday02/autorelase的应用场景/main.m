//
//  main.m
//  autorelase的应用场景
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "GoodPerson.h"
/*
    1、可以给类提供一个快速创建对象的类方法。
    
        返回值类型使用id，在编译的时候不会进行类型检查，希望把类型检查的错误在编译阶段就暴露。
        使用instancetype代替id。
        iOS 7 之后苹果官方推荐我们使用instancetype来代替id。
    
    2、在快速创建对象的方法中初始化对象的属性。
        
 
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"";
        NSString *str1 = [[NSString alloc]init];
        NSString *str2 = [NSString stringWithFormat:@"my age is %d",10];
        NSLog(@"%@",str2);
        
        // 在创建一个person对象
        Person *p = [Person personWithName:@"张三丰" andAge:100];
        [p show];
        
        
    }
    
    return 0;
}

void test(){
    @autoreleasepool {
        //        Person *p = [[[Person alloc]init] autorelease];
        //        Person *p1 = [[[Person alloc]init]autorelease];
        
        Person *p = [Person person];
        GoodPerson *gp = [GoodPerson person];
        [gp giveMoney];
        
    }
}
