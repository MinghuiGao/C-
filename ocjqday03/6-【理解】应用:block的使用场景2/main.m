//
//  main.m
//  6-【理解】应用:block的使用场景2
//
//  Created by 高明辉 on 16/1/28.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 思考&实现1:
    用返回值是block的函数,修改我们应用场景的代码
    
    使用block作为函数的返回值的步骤：
    1、使用typdef给block起别名
    2、使用新的block类型来声明函数
    3、使用block变量来接收返回的block  
    4、调用返回的block
 
 */

// 1 定义心的block类型

typedef  void (^BlockType)();
BlockType dayWork(int weekDay);
void workDay(int weekday){
    NSLog(@"===================");
    NSLog(@"起床");
    NSLog(@"坐车去公司");
    
    // 3 接收返回的block
    BlockType bt = dayWork(weekday);
    if (nil != bt) {
        // 4 调用block
        bt();
    }
    NSLog(@"打卡下班");
    NSLog(@"吃饭");
    NSLog(@"睡觉");
}

// 根据星期几来返回要执行的工作
// 2 声明函数
BlockType dayWork(int weekDay){
    BlockType bt;
    switch (weekDay) {
        case 1:
            bt = ^(){NSLog(@"今天星期一，做需求");};
            break;
        case 2:
            bt = ^(){NSLog(@"今天星期二，看代码");};
            break;
        case 3:
            bt = ^(){NSLog(@"今天星期三，修改bug");};
            break;
        case 4:
            bt = ^(){NSLog(@"今天星期四，测试");};
            break;
        case 5:
            bt = ^(){NSLog(@"今天星期五，上线");};
            break;
        default:
            bt = nil;
            break;
    }
    return bt;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i = 1; i <= 5 ; i++) {
            workDay(i);
        }
        workDay(100);
    }
    return 0;
}
