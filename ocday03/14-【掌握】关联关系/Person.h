//
//  Person.h
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ipad.h"
@interface Person : NSObject
{
    NSString *_name;
    Ipad *_ipad;
    
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setIpad:(Ipad *)ipad;
-(Ipad *)ipad;

// 行为： 听歌
-(void)listenMusic;
@end
