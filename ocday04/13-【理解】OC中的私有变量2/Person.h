//
//  Person.h
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString *_name;
}

-(void)setAge:(int)age;
-(int )age;

-(void)showInfo;
@end
