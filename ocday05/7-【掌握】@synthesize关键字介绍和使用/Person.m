//
//  Person.m
//  ocday05
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
//{
//    NSString *name;
//}

//使用@synthesize自动生成getter和setter方法的实现。
//@synthesize name;
//@synthesize age;
@synthesize height,weight,name,age;
//@synthesize weight;
//@synthesize sex;// 必须在.h中有声明才能使用@synthesize实现。

/*
-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}

-(void)setAge:(int)age {
    _age = age;
}
-(int)age{
    return self->_age;
}

-(void)setHeight:(float)height{
    _height = height;
}
-(float)height{
    return _height;
}

-(void)setWeight:(float)weight{
    _weight = weight;
}
-(float)weight{
    return _weight;
}
 */
@end
