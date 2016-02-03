//
//  Person.m
//  ocjqday05
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(nullable NSZone *)zone{
    
    // copy 返回的是不可变的副本，因此返回自己，因为不会被修改，这里是浅拷贝。

    return self;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone{
    Person *newP = [Person new];
    
    newP.name = self.name;
    return newP;
}

@end
