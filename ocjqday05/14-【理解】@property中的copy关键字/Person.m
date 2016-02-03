//
//  Person.m
//  ocjqday05
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

/*
// strong （retain）的set方法
-(void)setName:(NSString *)name{
    if (name != nil ) {
        [_name release];
        _name = name;
    }
}
*/

/*
//  copy 的set方法
-(void)setName:(NSString *)name{
    if (name != nil) {
        [_name release];
        _name = [name mutableCopy];
    }
}

 */

@end
