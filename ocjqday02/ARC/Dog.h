//
//  Dog.h
//  ocjqday02
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Dog : NSObject
@property (nonatomic,weak) Person *owner;
@end
