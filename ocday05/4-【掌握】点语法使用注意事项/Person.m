//
//  Person.m
//  ocday05
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setAge2:(int)age{
    
//    self->age2 = age;
    self.age2 = age;// 这样会有什么问题？
    // 这里会把self.age 替换成 [self setAge2];进行的是代码的替换，本质上是替换的方法。
}
-(int)age2{
    return age2;
}

@end
