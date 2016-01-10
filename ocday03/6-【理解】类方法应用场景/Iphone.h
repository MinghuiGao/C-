//
//  Iphone.h
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

// 定义颜色的枚举
typedef enum{BLACK,WHITE,GOLD} IColor;

@interface Iphone : NSObject
{
    @public
    NSString *_type;
    int _color;
}
// 显示iphone信息
-(void)showInfo;
@end
