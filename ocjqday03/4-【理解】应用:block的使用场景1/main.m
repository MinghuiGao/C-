//
//  main.m
//  4-【理解】应用:block的使用场景1
//
//  Created by 高明辉 on 16/1/28.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    block的使用场景
    block是一个类型，用来定义变量，block变量存放的是一段代码。
    
 */

//void workMonday(){
//    NSLog(@"===================");
//    NSLog(@"起床");
//    NSLog(@"坐车去公司");
//    NSLog(@"看代码");
//    NSLog(@"打卡下班");
//    NSLog(@"吃饭");
//    NSLog(@"睡觉");
//}
//
//void workTuesday(){
//    NSLog(@"===================");
//    NSLog(@"起床");
//    NSLog(@"坐车去公司");
//    
//    NSLog(@"修改bug");
//    
//    NSLog(@"打卡下班");
//    NSLog(@"吃饭");
//    NSLog(@"睡觉");
//}
//
//void workWensday(){
//    NSLog(@"===================");
//    NSLog(@"起床");
//    NSLog(@"坐车去公司");
//    
//    NSLog(@"测试");
//    
//    NSLog(@"打卡下班");
//    NSLog(@"吃饭");
//    NSLog(@"睡觉");
//}
//
//void workThursday(){
//    NSLog(@"===================");
//    NSLog(@"起床");
//    NSLog(@"坐车去公司");
//    
//    NSLog(@"发布");
//    
//    NSLog(@"打卡下班");
//    NSLog(@"吃饭");
//    NSLog(@"睡觉");
//}

void workDay(void (^workBlock)()){
    NSLog(@"===================");
    NSLog(@"起床");
    NSLog(@"坐车去公司");
    
    if (nil != workBlock) { // 对传进来的block在调用之前，进行非空判断。
        workBlock();
    }
    
    NSLog(@"打卡下班");
    NSLog(@"吃饭");
    NSLog(@"睡觉");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *work = @"做需求调研";
//        workMonday();
//        workTuesday();
//        workWensday();
//        workThursday();
        void (^myBlock)() = ^(){
            NSLog(@"今天的任务是： %@",work);
        };
        workDay(myBlock);
        workDay(nil);
        
        
        
    }
    return 0;
}
