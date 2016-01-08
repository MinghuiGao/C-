//
//  main.m
//  6【掌握】练习题讲解(一)-1
//
//  Created by 高明辉 on 16/1/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 设计一个”狗“类
	1> 属性
        * 颜色
        * 速度(单位是m/s) * 性别
        * 体重(单位是kg)
	2> 行为
        * 吃:每吃一次,体重增加0.5kg,输出吃完后的体重
        * 吠(叫):输出所有的属性
        * 跑:每吃一次,体重减少0.5kg,输出速度和跑完后的体重
        * 比较颜色:跟别的狗比较颜色,如果一样,就返回YES，否则返回NO。
        * 比较速度:跟别的狗比较速度,返回速度差(自己的速度 - 其他狗的速度)
        _speed - dog->_speed
 
 */

// 1，用枚举定义够的颜色
typedef enum {BLACK,YELLO,WHITE} dogColor;
// 2，用枚举定义狗的性别
typedef enum {GONG,MU} DogGender;

// 3，声明狗类
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
        //  创建一个狗的对象
        Dog *dog1 = [Dog new];
        dog1->_color = BLACK;
        dog1->_speed = 100;
        dog1->_weight = 10;
        
        [dog1 bark];
        [dog1 eat];
        [dog1 eat];

        [dog1 run];
        [dog1 run];

        // 在创建一条狗，来进行比较。
        Dog *bigYelloDog = [Dog new];
        bigYelloDog->_color = YELLO;
        bigYelloDog->_speed = 80;
        bigYelloDog->_weight = 20;
        
        [bigYelloDog bark];
        
        // 进行比较
        
        BOOL isSameColor = [bigYelloDog compareColorWithOtherDog:dog1];
        if(isSameColor){
            NSLog(@"颜色相同");
        }else{
            NSLog(@"颜色不相同");
        }
        
        // 比较速度
        int deltaSpeed = [bigYelloDog compareSpeedWithOtherDog:dog1];
        NSLog(@"两条狗的速度差是 : %d  ",deltaSpeed);
        
        
        
    }
    return 0;
}
