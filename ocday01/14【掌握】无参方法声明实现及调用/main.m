//
//  main.m
//  14【掌握】无参方法声明实现及调用
//
//  Created by 高明辉 on 16/1/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

/*
    无参方法的声明 实现  调用
    1、方法：
        跟C语言的函数类似
        无参的函数 定义的形式：
            void fun(){}
 
    2、在OC中方法分为：对象方法 和  类方法
    
        对象方法的特点：
            1）以－开头
            2）通过对象来调用
            3）可以访问对象的实例变量
        无参的对象方法的声明格式：
            -(返回值类型)方法名；
        注意：
            在@interface 和 @end之间，并且在大括号外部声明对象方法
 
        无参的对象方法的实现格式：
            -(返回值类型)方法名{
                // 方法的具体实现
            }
        注意：
            在@implementation 和 @end中实现对象方法。
 
        3、总结：一个方法的使用步骤：
            1）声明方法    @interface  和 @end中箭，并且在大括号外面
            2）实现方法    @implementation 和 @恩典中间，把声明的方法拷贝一份，‘；’改为｛｝。
            3）调用方法    通过类的对象来调用方法 
                         调用格式：［对象名 方法名];
 
 */
#import <Foundation/Foundation.h>

// 声明一个汽车类

@interface Car : NSObject

{
// 声明实例变量（属性），一般以下划线开头
@public // 将实力变量的访问控制改为public（公有的）
    int _speed;
    NSString *_color;
    NSString *_brand;
}

// 声明对象方法
-(void)run;

@end

// 完成类的实现
@implementation Car
// 在这里实现对象方法
-(void)run{
    // 在对象方法中方位对象的实力变量（属性），直接使用_speed即可。
    NSLog(@"车在以%d的时速奔跑！",_speed);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个对象
        Car *car = [Car new];// 1申请空间 2 初始化空间 3 返回对象的首地址。
        // 通过Car的对象car来调用run方法（run是一个对象方法！）
        [car run];
        
        // 给car对象的_speed 属性赋值
        car->_speed = 380;
        [car run];// 类方法的一个特点：可以在类方法中直接使用对象的实力变量。
        
    }
    return 0;
}
