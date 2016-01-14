//
//  Person.h
//  面向对象
//
//  Created by 曾静 on 16/1/14.
//  Copyright © 2016年 zj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject
{
   @public
    NSString *_name;
    Dog *_dog;//人和狗是关联关系，所以属性里有只狗
}
-(void)setName:(NSString *)name;
-(void)setDog:(Dog *)dog;
-(NSString *)name;
-(Dog *)dog;
-(void)liuDog:(Ball *)ball;



@end
