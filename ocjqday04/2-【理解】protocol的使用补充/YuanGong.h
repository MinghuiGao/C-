//
//  YuanGong.h
//  ocjqday04
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "workProtocol.h"
// 为了防止编译太多文件，可以将#import "workProtocal.h" 改成@protocol workProtocol;
@protocol workProtocol;// 告诉编译器这是一个协议。
//#import "Boss.h"
@class Boss;

@interface YuanGong : NSObject <workProtocol>
@property (nonatomic,strong) Boss *boss;
@end
