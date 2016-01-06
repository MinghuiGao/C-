//
//  main.m
//  13【掌握】创建一个对象并访问实例变量
//
//  Created by 高明辉 on 16/1/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

/*
    对象是个什么东西？
    对象就是一个类的一个具体实例。
    要创建一个对象：
        1、声明并实现一个类
 
        2、用类来实例化一个对象
            创建一个对象的格式：
            ［类名 new］;
            使用new创建对象时，一共做了三步：
                1）把Car类加载到内容中（第一次使用的时候加载），并在内存的堆区开辟一块内存空间
                2）把该对象的属性进行初始化（基本数据类型初始化为0），其它类型初始化为nil）。
                    nil 代表空，相当于C语言中的NULL。
                3）返回刚申请的内存空间的首地址。我们需要用一个指针来接收。
 
                4）使用Car 类型的指针变量来接收返回的对象的地址。
        3、对于Car *car = [Car new];有两种理解方式：
            1）创建了一个Car类型的指针变量，并且初始化
            2）用Car者个类实例化了一个对象，对象名为car。
        4、如何访问对象的属性值？
            格式：对象名-> 实力变量名；（要求实例变量必须是public类型）.
            car->_speed = 100;// 给car实例的实力变量_speed 赋值。
 
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

@end

// 完成类的实现
@implementation Car
// 声明中没有行为，因此这里不用实现行为方法。

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        // 创建一个对象
        // 对象就是一个类的某个具体实例：人是一个类，但是凤姐就是人这个类的一个对象。（一个具体的人）
        Car * car = [Car new];
        //[car new]做了三件事：
        // 使用Car 类型的指针变量来接收返回的对象的地址。
        
        // 如何访问对象的属性值？
        // 格式：对象名-> 实力变量名；（要求实例变量必须是public类型）.
        // 默认是@protected类型的，如何改成public？使用@public修饰。
        NSLog(@"_speed = %d",car->_speed  );
        // 如何修改car实例的实例变量的值？
        car->_speed = 100;// 像给一个变量赋值一样去赋值就可以了。
        NSLog(@"_speed = %d",car->_speed);
        
        
    }
    return 0;
}
