//
//  IPhoneUtils.h
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"
@interface IPhoneUtils : NSObject
/**
 将Icolor转换为对应的颜色
 */
+(NSString *)transColor:(IColor)color;
@end
