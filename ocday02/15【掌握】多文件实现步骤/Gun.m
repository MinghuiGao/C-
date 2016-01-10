//
//  Gun.m
//  ocday02
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Gun.h"

// Gun类的实现
@implementation Gun
// 枪的行为： 发射子弹
-(void)shootBullet:(Bullet *)bullet{
    // 1、敲子弹的屁股
    NSLog(@"瞄准，敲子弹的屁股");
    // 2、子弹爆炸
    [bullet fire];
}
@end