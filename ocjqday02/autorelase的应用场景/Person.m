
//
//  Person.m
//  ocjqday02
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString *)name andAge:(int)age{
    if (self = [super init] ) {
        self.name = name;
        self.age = age;
    }
    return self;
}

+(instancetype)person{
    return [[[self alloc]init] autorelease];
}

+(instancetype)personWithName:(NSString *)name andAge:(int)age{
    return [[[self alloc]initWithName:name andAge:age]autorelease];
}

-(void)show{
    NSLog(@"%@ %d",self.name,self.age);
}

-(void) dealloc{
    NSLog(@"person dealloc");
    [super dealloc   ];
}



@end
