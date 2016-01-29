//
//  Worker.m
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Worker.h"
#import "Baby.h"
@implementation Worker

-(void)makeBabySleep:(Baby *)baby{
    
    NSLog(@"%@在哄孩子睡觉",self.name);
    baby.sleepValue += 10;
    
}
-(void)feedBaby:(Baby *)baby{
    
    NSLog(@"%@在给孩子喂奶",self.name);
    baby.lifeValue += 10;
}
@end
