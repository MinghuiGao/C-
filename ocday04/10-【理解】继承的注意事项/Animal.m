//
//  Animal.m
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Animal.h"

@implementation Animal
-(void)eat{
    NSLog(@"animal在吃");
}

-(void )setAge:(int )age{
    _age = age;
}
-(int)age{
    return _age;
}

//-(void)shout{
//    NSLog(@"动物在叫");
//}
@end
