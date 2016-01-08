//
//  main.m
//  8-【理解】练习题讲解(一)-2
//
//  Created by 高明辉 on 16/1/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
     2.结合前面的“狗”类,设计一个“人”类 
     1> 属性
         * 姓名
         * 狗(养了一条狗)
     2> 行为
         * 喂狗:每喂一次,狗就会执行“吃”这个行为 
        * 遛狗:每溜一次,狗就会执行“跑”这个行为
 
 */

#pragma mark 声明Dog类
// 3.声明狗类
@interface Dog : NSObject

{
@public
    // 颜色
    int _color;
    // 速度
    int _speed;
    // 体重
    float _weight;
    
}
// 行为 对象方法
// .吃
-(void)eat;
// .叫
-(void)bark;
// 跑
-(void)run;
// 比较颜色
-(BOOL)compareColorWithOtherDog:(Dog *)dog;
// 比较速度 ，返回速度差
-(int)compareSpeedWithOtherDog:(Dog *)dog;
@end


#pragma mark Person类
// 声明Person类
@interface Person : NSObject
{
    // 人的两个属性
    NSString *_name;
    Dog *dog;
}
// 人的行为
// 喂狗 狗在吃，是狗的行为。
-(void)feedDog:(Dog *)dog;

// 遛狗 狗在跑，是狗的行为。
-(void)walkDog:(Dog *)dog;

@end

// 实现Person类 。
@implementation Person
-(void)feedDog:(Dog *)myDog{
    // 人的行为
    NSLog(@"人在喂狗");
    // 狗的行为
    [myDog eat];
}

-(void)walkDog:(Dog *)myDog {
    // 人在走
    NSLog(@"人在遛狗");
    // 狗在跑
    [myDog run];// [nil run]; 注意：向一个nil对象发送消息来调用方法时，都不会被执行，也不会报错，就是没有效果。
}

@end

// 1，用枚举定义够的颜色
typedef enum {BLACK,YELLO,WHITE} dogColor;
// 2，用枚举定义狗的性别
typedef enum {GONG,MU} DogGender;

// 4.实现Dog类
@implementation Dog
// 行为 对象方法
// .吃 每吃一次,体重增加0.5kg,输出吃完后的体重
-(void)eat{
    // 体重增加0.5
    _weight = _weight + 0.5f;
    // 输出体重
    NSLog(@"狗吃完了，体重是：%.2f",_weight);
}
// .叫 输出所有的属性
-(void)bark{
    NSLog(@"狗的颜色： %d ,狗的速度： %d,  狗的体重 ： %.2f",_color,_speed ,_weight);
}
// 跑 每吃一次,体重减少0.5kg,输出速度和跑完后的体重
-(void)run{
    // 体重－0.5
    _weight -= 0.5f;
    // 输出体重
    NSLog(@"狗跑完了，体重是：%.2f",_weight);
}
// 比较颜色
-(BOOL)compareColorWithOtherDog:(Dog *)dog{
    // 用传进来的狗和自己比较颜色
    if(dog->_color == _color){
        return YES;
    }else{
        return NO;
    }
}
// 比较速度 ，返回速度差
-(int)compareSpeedWithOtherDog:(Dog *)dog{
    // 把两条狗的速度进行返回速度差。
    int delta = dog->_speed - _speed;
    return delta;
}


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个Person类
        Person *p = [Person new];
        [p feedDog:nil];// 穿入了一个nil的对象。
        //穿入了一个nil的对象，表示海没有狗。
        // 创建一个Dog对象
        Dog *byd = [Dog new];
        byd->_color = YELLO;
        byd->_speed = 100;
        byd->_weight = 10;
        
        [p walkDog:byd];
        [p feedDog:byd];
        
    }
    return 0;
}
