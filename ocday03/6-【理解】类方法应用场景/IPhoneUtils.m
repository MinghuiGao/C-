//
//  IPhoneUtils.m
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "IPhoneUtils.h"

@implementation IPhoneUtils

+(NSString *)transColor:(IColor)color{
    switch (color) {
        case BLACK:
            return @"黑色";
            break;
        case WHITE:
            return @"白色";
            break;
        case GOLD:
            return @"土豪金";
            break;
        default:
            return @"";
            break;
    }
}

@end
