//
//  Tuhao.h
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"
#import "Beauty.h"
@interface Tuhao : NSObject
{
    NSString *_name;
    NSString *_tel;
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setTel:(NSString *)tel;
-(NSString *)tel;

// 用iphone7 给美女打电话。
-(void)call:(Iphone *) iphone andBeauty : (Beauty *)beauty;

@end
