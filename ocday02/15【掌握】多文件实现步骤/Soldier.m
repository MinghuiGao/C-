//
//  Soldier.m
//  ocday02
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Soldier.h"

@implementation Soldier
// 士兵的行为： 开枪,需要给把枪，并且给子弹。
-(void)fireGun:(Gun *)gun andBullet:(Bullet *)bullet{
    // 士兵要做的事，把子弹装到枪里去
    NSLog(@"%@ 把%@ 装到了%@枪里",_name,bullet->_type,gun->_type);
    // 接下来，就需要让枪去发射子弹了
    [gun shootBullet:bullet];
}

@end
