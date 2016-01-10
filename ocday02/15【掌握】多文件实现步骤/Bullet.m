//
//  Bullet.m
//  ocday02
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
// 要实现谁，就倒入对应的.h文件
#import "Bullet.h"

@implementation Bullet

// 子弹开火，就是爆炸，响一声
-(void)fire{
    NSLog(@"啪，%@飞出去了!",_type);
}

@end