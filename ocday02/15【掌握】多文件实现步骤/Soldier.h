//
//  Soldier.h
//  ocday02
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"
// Soldier的声明
@interface Soldier : NSObject
{
@public
    NSString *_name;
    Gun *_gun;// 必须保证在用刀其他类的时候之前已经声明过。
}

// 士兵的行为： 开枪,需要给把枪，并且给子弹。
-(void)fireGun:(Gun *)gun andBullet:(Bullet *)bullet;

@end
