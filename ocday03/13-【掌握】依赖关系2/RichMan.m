//
//  RichMan.m
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "RichMan.h"

@implementation RichMan
-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}

-(void)setTelNo:(NSString *)telNo{
    _telNo = telNo;
}
-(NSString *)telNo{
    return _telNo;
}

// 土豪的行为 给美女打电话
-(void)call:(Iphone *)iphone andBeauty:(Beauty *)beauty{
    // 在这个方法里用到了iphone对象，和beauty对象，因此 土豪对象需要依赖于这两个对象。
    NSLog(@"土豪 %@ 正在用 %@ 给美女 %@ 打电话。呼叫美女号码：%@",_name,[iphone name],[beauty name],[beauty telNo]);
}
@end
