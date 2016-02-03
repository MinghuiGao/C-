//
//  main.m
//  9-【理解】NSMutableString常用方法
//
//  Created by 高明辉 on 16/1/31.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 NSMutableString 常用方法
    1、类方法  string
        创建一个NSMutableString
 
    2、appednString:
        给一个NSMutableString追加内容
    3、appendFormat:
        给一个NSMutableString追加固定格式的字符串
    4、deleteCharactersInRange:
        删除range范围内的字符串。一般可以配合rangeOfString。
    5、replaceCharactersInRange:
        使用新的字符串替换掉range中的字符串
 

 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableString *ms = @"itcast";
//        [ms appendString:@"hello "];
        NSMutableString *ms = [NSMutableString string];
        ms.string = @"hello itcast";
        NSLog(@"ms = %@",ms);
    }
    return 0;
}

/*
 NSMutableString 的常用方法
 */
void test1(){
    NSMutableString *mStr = [NSMutableString string];
    NSLog(@"mStr = %p ",mStr);
    
    [mStr appendString:@"welcome to "];
    NSLog(@"mStr = %p mStr = %@",mStr,mStr);
    
    [mStr appendFormat:@"name : %@,age : %d",@"张三丰",100];
    NSLog(@"mStr = %p mStr = %@",mStr,mStr);
    
    // 删除 张三丰
    // 1 找到张三丰的range
    NSRange range = [mStr rangeOfString:@"张三丰"];
    // 2 删除
    [mStr deleteCharactersInRange:range];
    NSLog(@"mStr = %p mStr = %@",mStr,mStr);
    
    // 将100 替换成1000
    // 1 找到100 的range
    
    NSRange range2 = [mStr rangeOfString:@"100"];
    // 2  替换
    [mStr replaceCharactersInRange:range2 withString:@"1000"];
    NSLog(@"mStr = %p mStr = %@",mStr,mStr);
}