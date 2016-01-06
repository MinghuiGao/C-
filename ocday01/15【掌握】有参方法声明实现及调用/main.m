//
//  main.m
//  15【掌握】有参方法声明实现及调用
//
//  Created by 高明辉 on 16/1/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

/*
    有参方法的实现  和  调用
    有参函数的格式：
        void sum(int a){} 调用形式：-> sum(10);
        void max(int a, int b){} 调用形式： -> max(10,20);
    有参对象方法的使用步骤：
    1）声明 在@interface 和 @end之间，并且在大括号外部声明
        对象方法以－开头
        声明格式：
            -(void)方法名:(参数类型)参数名;
    2）实现 在@implementation 和 @end之间实现
        将声明拷贝到@implementation中，然后将；替换成｛｝，即可。
    3）调用 通过类的对象来调用对象方法
        通过类的对象来调用对象方法。
    
    有多个参数的对象方法的实现和调用
    1）声明
        2个参数的对象方法的声明格式：
            -(void)eat:(NSString *)dogName andFoodName:(NSString *)foodName ;
        注意：方法名是－> eat: andFoodName:   （方法名也包括冒号！）
    2）实现
    3）通过类的对象来调用
 
 
 */
#import <Foundation/Foundation.h>
// 声明一个类Dog
@interface Dog : NSObject

{
    @public
    NSString *_name;
    
}
// 声明对象方法,有一个NSString类型的参数，形参名为foodName。
// 方法名：eat:    －－－> 注意：eat后面的冒号也是方法名！
-(void)eat:(NSString *)foodName;

// 声明2个参数的对象方法
// 方法名：ear:  andFoodName:
//--> andFoodName 也可以随便写，但是，通常是吧后面的形参名首字母大写后，前面加个and，这是个规范。
// 形参名： dogName  foodName。
-(void)eat:(NSString *)dogName andFoodName: (NSString *)foodName;

@end

@implementation Dog

// 实现对象方法
-(void)eat:(NSString *)foodName{
    NSLog(@"狗正在吃%@",foodName);
}

// 实现有多个参数的对象方法
-(void)eat:(NSString *)dogName andFoodName: (NSString *)foodName{
    NSLog(@"%@正在吃%@",dogName,foodName);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 调用方法
//        1.先创建一个类的对象
        Dog * bigDog = [Dog new];// 干了三件事：1，申请内存 2.初始化对象的实力变量 3 使用一个Dog类型的指针来接收返回的对象的首地址。
        // 注意： 必须是@public类型的实力变量，才能够直接通过对象去访问。
        bigDog->_name = @"小黑";
//        2.通过对象来调用有参的对象方法
        [bigDog eat:@"热狗"];
        
        // 3。通过对象来调用对象方法，传入参数
        [bigDog eat:@"小黑" andFoodName:@"面包"];
    }
    return 0;
}
