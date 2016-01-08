//
//  main.m
//  2【了解】#pragma mark指令的使用
//
//  Created by 高明辉 on 16/1/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>


/*
 将代码分组
    使用一个预处理指令：
    1）＃pragma mark 分组的名称
 
    2）#pragma mark - 分组名称
        作用：多增加一条直线
 
    3) #pragma mark －
        作用：直接用一条直线分割, 注意。－后面不能加空格，否则出现两条线。
 
 */
// 创建一个汽车类 Car
#pragma mark - 汽车类
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

#pragma  mark -

@interface Dog:NSObject
-(void)eat;
@end

@implementation Dog

-(void)eat{
    NSLog(@"dod is eatting...");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
