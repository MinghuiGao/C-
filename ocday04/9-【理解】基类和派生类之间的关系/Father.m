//
//  Father.m
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Father.h"

@implementation Father

-(void)setName:(NSString *)xing{
    _name = xing;
}
-(NSString *)name{
    return _name;
}


-(void)showInfo{
    NSLog(@"你好，我叫： %@，幸会！",_name);
}

@end
