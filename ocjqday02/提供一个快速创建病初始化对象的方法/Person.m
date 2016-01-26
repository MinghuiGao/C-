//
//  Person.m
//  ocjqday02
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

+(instancetype)personWithName:(NSString *)name{
    return [[[self alloc] initWithName:name] autorelease];
}

-(instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

-(void)show{
    NSLog(@"我是%@",self.name);
}
-(void)dealloc{
    NSLog(@"person dealloc");
    [super dealloc];
}
@end
