//
//  Person.h
//  ocjqday04
//
//  Created by 高明辉 on 16/2/1.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject
-(void)run;
-(void)eat;
@end


@interface Person (extendedPersonWork)
-(void)work;
@end

@interface Person  (extendedPersonLife) // 分类

-(void)fishing;
-(void)rememberAge:(int)age;
@end

@interface Person () // 匿名分类 类扩展
@property (nonatomic,strong)NSString *name;
@end

@interface Person (Extension)// 分类 ，在分类中不能定义实例变量。只能增加属性
@property   (nonatomic,strong)  NSString *life;

@end

