//
//  main.m
//  10-【理解】NSDate的介绍和使用
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 NSDate的介绍和使用
    1、NSDate的介绍和使用
        NSDate 是OC中用来表示时间的类。
        一个NSDate对象，就代表一个时间。
 
    2,格式化日期 
 
    3,计算日期
        计算固定时间间隔后的日期
        注意：
            如果是传入正的时间间隔，就是计算未来时间
            穿入负数毫秒值，则计算过去时间。
 
 
 */
void test2();

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 计算明天此时的时间
        NSTimeInterval interval = -24 * 60 * 60;// 一天的毫秒值
        NSDate *tomorrow = [NSDate dateWithTimeIntervalSinceNow:interval];
        NSLog(@"tomorrow = %@",tomorrow);
        
        NSDateFormatter *f = [NSDateFormatter new];
        f.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        NSString *tStr = [f stringFromDate:tomorrow];
        NSLog(@"tStr : %@",tStr);
     
    }
    return 0;
}
void test2(){
    // 获取格式化日期
    // 1, 获取当前的date
    NSDate *date = [NSDate date];
    
    // 2，获取特定的DateFormatter
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy年MM月dd日 HH:mm:ss";
    
    // 3,将date按特定格式转换成字符串
    NSString *dateStr = [formatter stringFromDate:date];
    NSLog(@"date Str : %@",dateStr);
    
    // 将固定格式的字符串转换成NSDate
    NSString *dateTime = @"2016年02月03日 20:57:47";
    NSDate *datenew  = [formatter dateFromString:dateTime];
    NSLog(@"dateNew : %@",datenew);
}
void test1(){
    NSDate *date = [NSDate date];
    NSLog(@"date = %@",date);
    
    // 获取当前系统的时间。
    // 1 获取系统的时区
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    // 2 设置时区
    NSInteger interval = [zone secondsFromGMTForDate:date];
    // 3 重新生成时间
    NSDate *newDate = [date dateByAddingTimeInterval:interval];
    NSLog(@"date = %@",newDate);
}
