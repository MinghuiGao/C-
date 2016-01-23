//
//  Person.h
//  ocjqday01
//
//  Created by 高明辉 on 16/1/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"
@interface Person : NSObject
{
    NSString *_name;
    Room * _room ;
}

-(void)setRoom:(Room *)room;
-(Room *)room;

-(void)setName:(NSString *)name;
-(NSString *)name;
-(void)sayHi;
-(void)showInfo;

@end
