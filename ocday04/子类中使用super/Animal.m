//
//  Animal.m
//  ocday04
//
//  Created by 高明辉 on 16/1/22.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(void)eat{
    NSLog(@"animal is eating...");
}

-(instancetype)initWith:(NSString *)name andAge:(int)age{
    if (self = [super init]) {
        self->_name = name;
        self->_age = age;
    }
    return self;
}
@end
