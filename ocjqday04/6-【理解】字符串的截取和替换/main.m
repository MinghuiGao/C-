//
//  main.m
//  6-【理解】字符串的截取和替换
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    字符串的截取和替换
    1、字符串的截取
        
        注意，字符的index是从0开始的！
 
        substringFromIndex:
        截取从指定的位置开始（包括指定位置的字符）到结束.
 
        substringToIndex:
        截取从第0个字符到指定位置（不包含该指定的位置）结束的子串。
        
        substringWithRange:
        截取指定范围（NSRange）内的子串,包含location所在位置的字符。
 
    2、替换字符串
        使用NSString的对象方法：stringByReplacingOccurrencesOfString:方法来替换。

 
 */

void test2();

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    /*
        2)将" http:** ios.itcast.cn *ios*images* content_25.jpg " 的空格去掉,并且将*替换为/
     */
        NSString *oldStr = @" http:** ios.itcast.cn *ios*images* content_25.jpg ";
        NSLog(@"oldstr=%@",oldStr );
        /*
        // 1 去掉空格
        NSString *newStr = [oldStr stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSLog(@"newStr 1 = %@",newStr );
        // 2 把*替换成／
        
        NSString *newStr2 = [newStr stringByReplacingOccurrencesOfString:@"*" withString:@"/"];
        NSLog(@"newStr2 = %@",newStr2);
        */
        NSString *finalString = [[oldStr stringByReplacingOccurrencesOfString:@" " withString:@""] stringByReplacingOccurrencesOfString:@"*" withString:@"/"];
        NSLog(@"final string=%@",finalString);
        
        
    }
    return 0;
    
}






/*
 思考与实现2，1
 */
void test3(){
    /*
     1)将http:**ios.itcast.cn*ios*images*content_25.jpg中的*替换为/
     */
    NSString *originalString = @"http:**ios.itcast.cn*ios*images*content_25.jpg";
    NSString *newStr = [originalString stringByReplacingOccurrencesOfString:@"*" withString:@"/"];
    NSLog(@"newString : %@",newStr);
}

/*
    思考与实现
 */
void test2(){
    /*
     将标签内的字符串取出来 <itcast>传智播客</itcast>
     1、找出“传智播客”NSRange范围
     2、调用substringWithRange
     */
    NSString *str = @"<itcast>传智播客</itcast>";
    
    NSString *tagStart = @"<itcast>";
    NSString *tagEnd = @"</itcast>";
    
    NSRange rangeTagStart = [str rangeOfString:tagStart];
    NSLog(@"rangTagStart : loc = %lu",rangeTagStart.location);
    NSRange rangeTagEnd = [str rangeOfString:tagEnd];
    
    NSUInteger loc = rangeTagStart.location + rangeTagStart.length;
    NSUInteger len = rangeTagEnd.location - rangeTagStart.length;
    NSRange range = NSMakeRange(loc, len);
    NSString *tagInfo = [str substringWithRange:range];
    NSLog(@"tagInfo = %@",tagInfo );
    
}

/**
    字符串的截取
 */
void test1(){
    
}
