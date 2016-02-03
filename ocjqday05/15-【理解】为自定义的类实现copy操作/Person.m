//
//  Person.m
//  ocjqday05
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)copyWithZone:(NSZone *)zone{
    // 创建一个新的对象，分配了新的空间。
    Person *newp = [Person new];
    // 将自己的属性赋值给新对象。
    newp.name = _name;
    newp.age = _age;
    // 返回这个新的对象
    return newp;
    
}

@end
