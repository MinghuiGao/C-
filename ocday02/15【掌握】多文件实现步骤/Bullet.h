//
//  Bullet.h
//  ocday02
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Bullet : NSObject
{
@public
    NSString *_type;
}
// 子弹的行为，爆炸
-(void)fire;

@end