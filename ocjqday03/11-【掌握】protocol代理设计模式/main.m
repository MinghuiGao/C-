//
//  main.m
//  11-【掌握】protocol代理设计模式
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Father.h"
#import "Baby.h"
#import "Worker.h"

/*
    protocol 代理设计模式
    1、什么时设计模式
        是解决编程问题的一些经过验证可行的解决方案，固定的模式。
    2、代理设计模式：
        一种面向对象的设计思想，在完成某件事情的时候，交给自己的代理对象来完成，而并不是自己去直接完成。
    3、使用代理设计模式：
        对于自己不想亲自处理或者没法处理的事情，可以保存一个代理的类对象，交给代理来做。 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Father  *father = [Father new];
        
        Baby *baby = [Baby new];
        baby.lifeValue = 100;
        baby.sleepValue  = 100;
        father.son = baby;
        
        baby.father = father;
        Worker *baomu = [Worker new];
        baomu.name = @"芙蓉姐姐";
        father.baomuDelegate = baomu;
        
        for (int i = 0; i < 100; i++) {
            NSLog(@"孩子正常=============");
            baby.sleepValue -= 1;
            baby.lifeValue -= 2;
            if (baby.lifeValue < 70) {
                [baby needToEat];
            }
            if (baby.sleepValue < 50) {
                [baby cry];
            }
            if (baby.lifeValue < 20 || baby.sleepValue < 20) {
                NSLog(@"baby挂了");
            }
        }
        
    }
    return 0;
}
