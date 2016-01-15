//
//  Person.m
//  ocday05
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name{
    NSLog(@"set方法被调用了");
    _name = name;
}
-(NSString *)name{
     NSLog(@"get方法被调用了");
    return _name;
}
@end
