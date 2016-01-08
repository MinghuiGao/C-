//
//  main.m
//  4【掌握】常见错误汇总
//
//  Created by 高明辉 on 16/1/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 常见错误及注意事项：
    1）@interface 和不能嵌套使用
    2）OC是一门弱语法的语言，没有类的声明，直接写实现，也可以。但是不推荐.
    3) 只有类的声明，没有类的实现，是不行的， 链接的时候会报错。
    4）不能漏写@end。
    5）实力变量声明不能放到｛｝外面
    6）方法的声明不能放到｛｝里面
    7）在声明时不能对类的实例变量初始化，因为实例变量不能脱离对象而存在。（在声明类时，还没有对象，因此给实力变量赋值没用）。
    8）方法和函数的调用方式不要搞混。
        方法调用方式：[对象名 方法名:参数];
        函数调用方式：函数名(参数);
    9) 类的实现可以放在main函数之后，只要保证在使用之前声明过就可以。
    10）经典错误：调用了一个不存在的方法。
        最常碰到的异常：
            -[Dog run]: unrecognized selector sent to instance 0x1002002b0
            意思是：发送了一个无法识别的消息。也就是调用了一个没有实现的方法。
        
        介绍一下oc中的一场捕捉机制：
 
        @try｛｝
        @cathc(NSException *exception){}
        @finally{}
 
 
 */

// 类的声明不能嵌套使用
//@interface Person : NSObject
//
//@interface Dog : NSObject
//
//
//@end
//@end
//@implementation Person
//
//@end

//  直接写类的实现@implementation
//@implementation Dog : NSObject
//{
//@public
//int _age;
//    
//}
//
//-(void)run{
//    NSLog(@"dog is running...")  ;
//}
//
//@end


//  只有类的声明,没有实现
//@interface Car : NSObject
//{
//    @public
//    int _speed;
//}
//@end


//@interface Dog : NSObject
//{
////    int _age = 100; // 报错！
//    int _age;
////    -(void)run;  对象方法的声明，不能放到｛｝里面去。
//}
////int _speed;   实力变量的声明不能放在｛｝外面。
//
//-(void)run;
//
//@end


@interface Dog :NSObject
{
    @public
    int _age;
    
}
-(void)run;

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [Dog new];
//        [dog run];// 这里的run方法并没有被实现。
        // 这时的程序就崩溃了
        // 如何在程序出现异常的时候避免程序崩溃呢？使用异常捕捉机制@try @catch
        @try {
            [dog run];// 这里的run方法并没有被实现。
        }
        @catch (NSException *exception) {
            NSLog(@"[dog run]执行出现异常.");
        }
        @finally {
            NSLog(@"出现异常后继续执行，没有崩溃。");
        }
        
        NSLog(@"后面的代码");
    }
    return 0;
}


@implementation Dog

-(void)ru{
    NSLog(@"狗仔跑！");
}

@end