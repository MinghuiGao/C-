//
//  Person.h
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gender.h"
@interface Person : NSObject
{
    // 每个人都必须要有的属性
    NSString *_name;
    int _age;
    Gender _gender;
    float _height;
}

-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setAge:(int )age;
-(int )age;

-(void)setGender:(Gender)gender;
-(Gender)gender;

-(void)setHeight:(float )height;
-(float)height;

@end
