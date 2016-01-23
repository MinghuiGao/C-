//
//  Room.m
//  ocjqday01
//
//  Created by 高明辉 on 16/1/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Room.h"

@implementation Room
-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}
-(void)dealloc{
    NSLog(@"%@ 被销毁了 ",_name);
    [super dealloc];
}
@end
