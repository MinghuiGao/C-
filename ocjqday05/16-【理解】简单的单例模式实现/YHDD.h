//
//  YHDD.h
//  ocjqday05
//
//  Created by 高明辉 on 16/2/4.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHDD : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) int age;
+(instancetype)shareInstance;
@end
