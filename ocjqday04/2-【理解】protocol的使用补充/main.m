//
//  main.m
//  2-【理解】protocol的使用补充
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "YuanGong.h"
#import "workProtocol.h"
/*
    1、是用@protocol来说明一个协议
        作用：告诉编译器这是一个协议。
 
        @class Boss;
            作用：告诉编译器Boss 是一个类。
            在实现的时候，需要导入Boss.h。
    
    2、协议的定义，也可以放在其它类的.h文件中一起定义。
        
    注意：
        调用协议中定义的方法时，必须要导入协议。
    
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boss *boss = [Boss new];
        
        
        YuanGong *yg = [YuanGong new];
        
        boss.yg = yg;
        yg.boss = boss;
        
        [yg work];// 在main中调用的时候，也需要导入协议。
        
        [boss letWorkerWork];
        
        [boss paySalary];
        
    }
    return 0;
}
