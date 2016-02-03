//
//  Person.m
//  ocjqday04
//
//  Created by 高明辉 on 16/2/1.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"
#import "Person_Person_Gmh.h"


@implementation Person
{
    // 声明私有的实例变量。
    NSString *sex;
}

// 在person.h中没有声明，所以是一个私有的方法，只能在.m文件中使用。
-(void)privateFun{
    NSLog(@"这是一个私有的方法");
}

-(void)fishing{
    NSLog(@"go fishing");
}

-(void)work{
    sex =  @"nan";
    NSLog(@"sex = %@",sex);
    [self privateFun];
    NSLog(@"working ");
}

-(void)eat{
    NSLog(@"eating.");
}
-(void)run{
    NSLog(@"running...");
}
-(void)GMHWrok{
    NSLog(@"GMH is working.");
}

-(void)rememberAge:(int)age{
    
}
@end


