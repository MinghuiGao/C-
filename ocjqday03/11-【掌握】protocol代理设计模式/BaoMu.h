//
//  BaoMu.h
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Baby;
@protocol BaoMu <NSObject>
// 一个保姆的协议，要求保姆必须会哄孩子睡觉，会喂孩子。
/**
    哄孩子睡觉
 */
-(void)makeBabySleep:(Baby *)baby;

/**
 喂孩子。
 */
-(void)feedBaby:(Baby *)baby;


@end
