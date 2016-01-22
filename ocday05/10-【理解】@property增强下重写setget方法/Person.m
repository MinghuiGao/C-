//
//  Person.m
//  ocday05
//
//  Created by 高明辉 on 16/1/16.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setAge:(int)age{
    if(age > 0){
        self->_age = age;
    }else{
        NSLog(@"年龄不合法");
    }
}

@end
