//
//  Iphone.m
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Iphone.h"
#import "IPhoneUtils.h"
// 创建一个Iphone类
@implementation Iphone

-(void)showInfo{
    // 调用类方法来将枚举类型的颜色，转换为字符串。
    NSString *color = [IPhoneUtils transColor:_color];
    
    NSLog(@"手机的型号是：%@,颜色是：%@",_type,color);
}

@end
