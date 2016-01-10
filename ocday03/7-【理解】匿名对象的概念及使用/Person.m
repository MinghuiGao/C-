//
//  Person.m
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)walkDog:(Dog *)dog{
    NSLog(@"人牵着狗");
    [dog run];
}
@end
