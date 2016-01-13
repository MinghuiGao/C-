//
//  Person.m
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}

-(void)setAge:(int )age{
    _age = age;
}
-(int )age{
    return _age;
}

-(void)setGender:(Gender)gender{
    _gender = gender;
}
-(Gender)gender{
    return _gender;
}

-(void)setHeight:(float )height{
    _height = height;
}
-(float)height{
    return self->_height;// 也是ok的。
}
@end
