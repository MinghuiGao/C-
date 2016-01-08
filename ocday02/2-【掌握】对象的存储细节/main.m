//
//  main.m
//  2-【掌握】对象的存储细节
//
//  Created by 高明辉 on 16/1/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    类的构成：类名   属性（实例变量） 行为
 
    创建一个类的时候，需要两部分：类的声明和类的实现
 
    2、看一下对象的存储细节：
        
 
 
 */

// 创建一个汽车类 Car
@interface Car : NSObject

{
    @public
    // 类的属性，实例变量
    int _speed; // 汽车的速度
    int _whell;  // 轮子的个数
    
}

// 行为  方法 注意，在类中的函数就叫做方法。
-(void)run;
@end
@implementation Car

-(void)run{
    NSLog(@"汽车在跑!~");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
         // 调用汽车的run方法
        // 1 创建car对象
        Car *car = [Car new];
        // 1.申请空间  2.初始化  3.返回地址
        [car run];// 调用car］的run方法
        
        // 打印汽车的速度
        //修改汽车的速速
        // 注意，只能直接访问@public的实力变量（属性）。
        car->_speed = 180;
        car->_whell = 4;
        NSLog(@"_speed  = %d, _wheel = %d ",car->_speed,(*car)._whell);
        
        
        
    }
    return 0;
}
