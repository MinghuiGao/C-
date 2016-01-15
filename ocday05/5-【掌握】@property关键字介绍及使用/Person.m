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
    _name = name;
}
-(NSString *)name{
    return _name;
}
// 手动进行方法的实现
-(void)setAge:(int)age{
    _age = age;
}
-(int)age{
    return _age;
}
-(void)setHeight:(float)height{
    _height = height;
}
-(float)height {
    return _height  ;
}

-(void)setWeight:(float)weight {
    _weight = weight    ;
}
-(float)weight  {
    return _weight;
}
@end
