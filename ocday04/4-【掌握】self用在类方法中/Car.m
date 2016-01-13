//
//  Car.m
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Car.h"

@implementation Car

+(void)run{
    // 调用其它的类方法
//    [self didi];
    [Car didi];
    NSLog(@"self = %@，self = %p",self,self);// self在这里指的就是Car这个类对象。
}

// 响铃
+(void)didi{
    NSLog(@"滴滴!");
}
@end
