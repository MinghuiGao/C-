//
//  Ball.h
//  面向对象
//
//  Created by 曾静 on 16/1/14.
//  Copyright © 2016年 zj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ball : NSObject
{
    NSString *_name;
    NSString *_color;
}
-(void)setName:(NSString *)name;
-(void)setColor:(NSString *)color;
-(NSString *)name;
-(NSString *)color;
@end
