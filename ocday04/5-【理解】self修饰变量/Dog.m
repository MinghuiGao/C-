//
//  Dog.m
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(void)setName:(NSString *)name{
    // 局部变量的变量名和实例变量的变量名重复，那么局部变量会覆盖实例变量的作用域。
    self->name = name;
    int age ;
}

-(NSString *)name{
    return name;
}
@end
