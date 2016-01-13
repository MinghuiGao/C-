//
//  Person.m
//  ocday03
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

NSString *sex = @"male";
//int num = 1;
num = 1;
@implementation Person
-(void)sayHello{
    
    static int count = 0;
    count++;
    NSLog(@"hello  count = %d,sex = %@",count,sex);
    NSLog(@"num = %d",num++);
    
    
}
@end
