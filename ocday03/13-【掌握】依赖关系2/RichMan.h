//
//  RichMan.h
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"
#import "Beauty.h"

// 土豪
@interface RichMan : NSObject
{
    NSString *_name;
    NSString *_telNo;
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setTelNo:(NSString *)telNo;
-(NSString *)telNo;

// 土豪的行为 给美女打电话
-(void)call:(Iphone *)iphone andBeauty:(Beauty *)beauty;
@end
