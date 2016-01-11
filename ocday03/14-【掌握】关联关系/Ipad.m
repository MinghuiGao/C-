//
//  Ipad.m
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Ipad.h"

@implementation Ipad
-(void)setType:(NSString *)type{
    _type = type;
}
-(NSString *)type{
    return _type;
}

// 行为：放歌
-(void)playMusic{
    NSLog(@"正在播放歌曲");
}
@end
