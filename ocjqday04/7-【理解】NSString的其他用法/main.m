//
//  main.m
//  7-【理解】NSString的其他用法
//
//  Created by 高明辉 on 16/1/31.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSString的其它用法 
    1、【理解】获取字符串的每个字符
        遍历整个字符串，依次取出每个字符
            1） 获取字符串的字符个数：length
            2)  获取字符串指定位置上的字符： characterAtIndex:
 
	2、【理解】字符串和其他数据类型转换
        将字符串类行的数据转换成对应的数据类型
        比如：
            @"1" - > 转换成int类型
            @"3.14"  -> 转换成float或者double类型。
        使用NSStrting的对象方法：intValue; doubleValue; floatValue;
 
        将NSString转化成C语言的字符串   char *c ;
 
    3、【理解】NSString去除空格
        去掉所有空格：
            调用stringByReplacingOccurencesOfString:
        
        去掉首尾的空格：
            调用stringByTrimingCharactersInset:
        
            注意：
                生成穿入的参数是一个NSCharacterSet类型的对象，可以通过NSCharacterSet的类方法来生成。
 
            [NSCharacterSet whitespaceCharacterSet]; // 生成去掉首尾空格的字符序列。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @" hello world ! ";
        NSLog(@"-%@-",str);
        // 去掉所有空格
        NSString *newStr1 = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSLog(@"-%@-",newStr1);
        
        // 去掉首尾的空格
        NSString *newStr2 = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];

        NSLog(@"-%@-",newStr2);

    }
    return 0;
}


void test2(){
    NSString *strInt = @"10";
    NSString *strFloat = @"3.14";
    
    int numInt = [strInt intValue];
    NSLog(@"%d",numInt);
    
    float numF = [strFloat floatValue];
    NSLog(@"numF = %.2f",numF);
    
    double numD = [strFloat doubleValue  ];
    NSLog(@"numD = %.2lf",numD );
    
    NSString *strOc = @"hello world, oc你好世界";
    const char *str = [strOc UTF8String];// 注意 ：UTF8String 支持中文。
    printf("str = %s\n",str);
}

void test1(){
    NSString *str = @"welcom to itcast!";
    NSInteger len = str.length;
    for (int i = 0; i < len; i++) {
        unichar c = [str characterAtIndex:i];
        printf("%c\t",c);
    }
    printf("\n");
}
