//
//  Ipad.h
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ipad : NSObject
{
    NSString *_type;
}
-(void)setType:(NSString *)type;
-(NSString *)type;

// 行为：放歌
-(void)playMusic;
@end
