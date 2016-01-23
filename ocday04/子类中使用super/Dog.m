//
//  Dog.m
//  ocday04
//
//  Created by 高明辉 on 16/1/22.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(void)eat{
    [super eat];
    NSLog(@"狗仔吃");
}
-(void)dogEat{
    NSLog(@"animal : %@ ,age :%d,legs :%d",self->_name,self->_age,self->_legs);
    [super eat];
}

-(instancetype)initWith:(NSString *)name andAge:(int)age andLegs:(int)legs{
    if (self = [super initWith:name andAge:age]) {
        self->_legs = legs ;
        
    }
    return self;
}
@end
