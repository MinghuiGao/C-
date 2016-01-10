//
//  main.m
//  3【掌握】类方法使用注意事项
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

/*\
    类方法使用的注意事项
        实现一个Calculator类
 
    注意事项：
    1）调用只能通过类名来调用。
    2）能通过对象来调用类方法，报错。
    3）类方法可以和对象方法同名。不会报错。
        通过类名调用类方法
        通过对象来调用对象方法。
 
    
 
 */

// 声明类
@interface Calulator : NSObject
// 声明类方法
+(int)sum:(int)num1  andNum2:(int)num2;

// 声明一个同名的对象方法
-(int)sum:(int)num1  andNum2:(int)num2;

@end

// 实现类
@implementation Calulator

// 实现类方法
+(int)sum:(int)num1  andNum2:(int)num2{
    return num1 + num2;
}

// 实现对象方法
-(int)sum:(int)num1  andNum2:(int)num2{
    return num1 + num2;
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 调用
        int num1 = 10;
        int num2 = 5;
        int res = [Calulator sum:num1 andNum2:num2];
        NSLog(@"%d + %d = %d",num1,num2,res);
        
        Calulator *cal = [Calulator new];
//        [cal sum:num1 andNum2:num2];  // 通过对象来调用类方法，报错！
        NSLog(@"res = %d",[cal sum:num1 andNum2:num2]);

    }
    return 0;
}
