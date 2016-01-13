//
//  Son.m
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Son.h"

@implementation Son
-(void)showInfo{
    NSLog(@"要是我爸，他会这么说：");
    [super showInfo];// 调用了showInfo在父类中的实现。
    
    NSLog(@"不过我这么说：");
    NSLog(@"看什么，没见过我？人称： %@",_name);
}
@end
