//
//  Person.m
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)eat{
    NSLog(@"正在吃饭");
    [self work];
}

-(void)work{
    NSLog(@"地下工作");
    NSLog(@"班长月薪 30k");
}

@end
