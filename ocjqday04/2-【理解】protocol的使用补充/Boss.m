//
//  Boss.m
//  ocjqday04
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Boss.h"
#import "YuanGong.h"
#import "workProtocol.h"
@implementation Boss

-(void)letWorkerWork{
    [self.yg work];
}

-(void)paySalary{
    NSLog(@"付给工人钱");
}
@end
