//
//  BigCar.m
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "BigCar.h"

@implementation BigCar
-(void)showInfo{
//    _wheels = 4;
//    NSLog(@"wheels = %d",_wheels);// _wheels 是private的，因此子类中不能访问。
    //  注意：私有的实力变量可以被子类继承，但是不能被子类使用。
    _speed = 100;
    NSLog(@"speed = %d",_speed);// _speed 是protected的，子类中可以访问。
    _name = @"bigcar";
}
@end
