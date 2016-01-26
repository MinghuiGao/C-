//
//  Person.h
//  ocjqday02
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic,assign) int age;
@property (nonatomic,retain) NSString *name;


-(instancetype)initWithName:(NSString *)name andAge:(int)age;
+(instancetype)person;

+(instancetype)personWithName:(NSString *)name andAge:(int)age;


-(void)show;

@end
