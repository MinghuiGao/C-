//
//  Student.h
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediaProtocal.h"
@interface Student : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) id<MediaProtocal> delegate;

-(void)findHouse;
@end
