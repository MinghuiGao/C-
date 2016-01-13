//
//  Person.m
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)run{
    NSLog(@"人在跑"   );
}

-(void)work{
    // 如果人的工作就是跑，那么如何调用run方法呢？
    // 可以通过self来调用。
    [self run];
    NSLog(@"人在工作");
}
@end
