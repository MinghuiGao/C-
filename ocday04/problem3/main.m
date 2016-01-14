//
//  main.m
//  狗玩球
//
//  Created by 曾静 on 16/1/14.
//  Copyright © 2016年 zj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Ball *ball = [Ball new];
        [ball setName:@"弹力球"];
        [ball setColor:@"黄色"];
        Dog *dog = [Dog new];
        [dog setName:@"旺财"];
        Person *person = [Person new];
        [person setName:@"凤姐"];
        [person setDog:dog];
        [person liuDog:ball];
        
        
        
        
    }
    return 0;
}
