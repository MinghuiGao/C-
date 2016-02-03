//
//  Person.h
//  ocjqday05
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying,NSMutableCopying >
@property (nonatomic,strong) NSString *name;
@end
