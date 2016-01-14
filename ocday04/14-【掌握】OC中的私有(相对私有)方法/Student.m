//
//  Student.m
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void) eat{
    NSLog(@"student 正在吃饭");
//  父类中的work方法，在子类当中完全不可见。不能被子类访问。
}

@end
