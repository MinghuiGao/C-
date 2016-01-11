//
//  Person.m
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setAge:(int)age{
    // 在这里，对实力变量age进行赋值，并且可以屏蔽非法值。
    if (age > 0) {
        _age = age;
    }
}

-(int)age{
    return _age;
}
@end
