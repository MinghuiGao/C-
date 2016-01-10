//
//  Gun.h
//  ocday02
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
// 如果用到了其它类，注意腰导入
#import "Bullet.h"
// 声明Gun类
@interface Gun : NSObject
{
@public
    NSString *_type;
    Bullet *_bullet;
}
// 枪的行为： 发射子弹
-(void)shootBullet:(Bullet *)bullet;

@end
