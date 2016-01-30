//
//  Boss.h
//  ocjqday04
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "YuanGong.h"
@class YuanGong ;// 防止相互包含。


// 在Boss类的.h文件中定义一个协议。
@protocol payMonye <NSObject>


-(void)paySalary;


@end


@interface Boss : NSObject <payMonye>
@property (nonatomic,strong)YuanGong *yg;

-(void)letWorkerWork;

@end
