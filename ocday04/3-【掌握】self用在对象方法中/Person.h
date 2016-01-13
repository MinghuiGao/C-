//
//  Person.h
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setAge:(int)age;
-(int)age;


-(void)run;
-(void)work;
@end
