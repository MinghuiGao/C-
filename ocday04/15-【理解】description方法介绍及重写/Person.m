//
//  Person.m
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
// 重写父类的description方法。
-(NSString *)description{
    return [NSString stringWithFormat:@"姓名： %@, 年龄 : %d , 身高 : %.2f",_name,_age,_height];

//    return [NSString stringWithFormat:@"%@",self];
}

+(NSString *)description{
    return @"这里类的描述信息";
}
@end
