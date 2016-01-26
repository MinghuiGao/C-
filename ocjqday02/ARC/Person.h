//
//  Person.h
//  ocjqday02
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;

@interface Person : NSObject
@property(nonatomic,retain) NSString *name;

@property (nonatomic,weak) Dog *dog;
@end
