//
//  Dog.m
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(void)eat{
//        [self eat]; 异常
    [self run];
    NSLog(@"对象方法eat");

}
+(void)eat{
    [self run];
    NSLog(@"类方法eat");
}

-(void)run{
    NSLog(@"对象方法run");
}
+(void)run{
    NSLog(@"类方法run");
}

@end
