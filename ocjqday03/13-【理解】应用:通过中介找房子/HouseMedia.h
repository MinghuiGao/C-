//
//  HouseMedia.h
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediaProtocal.h"
// 让房屋中介，遵守中介协议 。
@interface HouseMedia : NSObject <MediaProtocal>

@property (nonatomic,strong) NSString *name;
@end
