//
//  Person.m
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}

-(void)setIpad:(Ipad *)ipad{
    _ipad = ipad;
}
-(Ipad *)ipad{
    return _ipad;
}

// 行为： 听歌
-(void)listenMusic{
    // 使用自己的ipad放歌听
    if (_ipad != nil) {
        [_ipad playMusic];
        NSLog(@"可以听歌，好爽");
    }else{
        NSLog(@"没有iPad,听不了歌 TT ");
    }
}
@end
