//
//  Person.m
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    int _age;// 在@implementation中定义的实例变量，是真正被隐藏的，外部看不到，也无法访问。
}
-(void)setAge:(int)age{
    _age = age;
}
-(int )age{
    return _age;
}
-(void)showInfo{
    NSLog(@"name = %@,age = %d",_name,self->_age) ;
}
@end
