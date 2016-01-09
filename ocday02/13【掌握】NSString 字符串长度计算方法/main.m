//
//  main.m
//  13【掌握】NSString 字符串长度计算方法
//
//  Created by 高明辉 on 16/1/9.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <string.h>

/*
    计算NSString字符串的长度
    通过length方法
        NSString是一个类，其中由对象方法，就是length，返回字符串的长度。
 
        中文字符，在OC的字符串中，占一个字符。而中文字符在C语言中，占3个字节。

        中英文混合时，一个英文字母算一个字符，一个中文字符算一个字符。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString *str = @"hello itcast!" ;
        // length是一个对象方法，因此需要通过对象来调用。
        NSInteger length = [str length];
        NSLog(@"str的长度是：%ld",length);
        
        // 如果字符是中文的情况
        NSString *str2 = @"welcom to 中国!";
        NSInteger length2 = [str2 length];
        NSLog(@"str2 的长度是：%ld",length2);
        // 注意，中文在OC的字符串中占一个字符。
        
        //C语言中的中文字符
        char *s = "中国";
        printf("s的长度是:strlength(s) = %lu \n",strlen(s));
        
        
    }
    return 0;
}
