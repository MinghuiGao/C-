//
//  Dog.h
//  面向对象
//
//  Created by 曾静 on 16/1/14.
//  Copyright © 2016年 zj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ball.h"
@interface Dog : NSObject
{
//   @public  用了set get后不写了
    NSString *_name;
}
-(void)setName:(NSString *)name;
-(NSString *)name;
-(void)run:(Ball*)ball;
-(void)playBall:(Ball*)ball;
@end
