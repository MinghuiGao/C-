//
//  Animal.m
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Animal.h"

//int zhongleiShuliang = 0; // 全局变量，只能在本文件中使用，无法在外部使用。

zhongleiShuliang = 100;
@implementation Animal
{
    int _legs;
}

-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}

-(void)showInof{
    zhongleiShuliang++;
    NSLog(@"种类数量：%d",zhongleiShuliang);
}
+(void)showInfo{
    zhongleiShuliang++;
    NSLog(@"数量：%d",zhongleiShuliang);
}

@end
