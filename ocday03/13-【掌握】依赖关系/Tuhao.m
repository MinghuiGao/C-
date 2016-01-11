//
//  Tuhao.m
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Tuhao.h"

@implementation Tuhao
-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}

-(void)setTel:(NSString *)tel{
    _tel = tel;
}
-(NSString *)tel{
    return _tel;
}


// 用iphone7 给美女打电话。
-(void)call:(Iphone *) iphone andBeauty : (Beauty *)beauty{
    NSLog(@"土豪%@ 正在用 %@ 给美女 %@ 打电话:呼叫美女 %@",_name,[iphone type],[beauty name],[beauty telNum]);
}
@end
