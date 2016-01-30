//
//  main.m
//  3-【理解】NSString字符串比较
//
//  Created by 高明辉 on 16/1/30.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSString字符串的比较
    1、比较字符串的大小：
        按字符的ascii码值比较：
            升序： a b c    1 2 3 ..
            降序：  c b a    4 2 1
        本质上比较的还是字符的ascii码值。依次比较。
        使用comopare方法，是一个对象方法。
        返回值：
            NSOrderedAscending,   // 升序 a < b
            NSOrderedSame,        // 降序 b > a
            NSOrderedDescending。 // 相同 a == a
 
    2、指定条件来比较字符串大小
        比如是否忽略大小写，按字符个数进行比较等。
 
    3、比较字符串是否相等
        使用 ＝＝ 判断，只能判断两个对象在内存中的地址是否相等，即：是否是同一个对象。
        
        使用NSString的对象方法：isEqualToString，可以比较字符串的内容是否相等。默认是区分大小写的。
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"abc";
        NSString *str2 = @"abc";
        
        NSString *str3 = str1;
        
        if (str1 == str3) {
            NSLog(@"相等");
        }else{
            NSLog(@"不想等");
        }
        
        NSLog(@"str1 = %p, str3 = %p ",str1,str3);
        
        NSString *str4 = [NSString stringWithFormat:@"aBc"];
        if (str1 == str4) {
            NSLog(@"相等");
        }else{
            NSLog(@"不想等");
        }
        // 如何比较不同的字符串对象的内容呢？
        BOOL isEqual = [str1 isEqualToString:str4];
        if (isEqual) {
            NSLog(@"相等");
        }else{
            NSLog(@"不想等");
        }
    }
    return 0;
}

void test2(){
    
    NSString *str1 = @"abc";
    NSString *str2 = @"Abc";
    // NSCaseInsensitiveSearch  忽略大小写（大小写不敏感）
    NSComparisonResult res = [str1 compare:str2 options:NSCaseInsensitiveSearch];
    switch (res) {
        case NSOrderedAscending:
            NSLog(@"%@ < %@",str1,str2);
            break;
        case NSOrderedDescending:
            NSLog(@"%@ > %@",str1,str2);
            break;
        case NSOrderedSame:
            NSLog(@"%@ == %@",str1,str2);
            break;
        default:
            break;
    }
}

void test1(){
    NSString *str1 = @"abc";
    NSString *str2 = @"abc123";
    NSLog(@"%d",'\0');// OC字符串也是以\0 结束。
    NSComparisonResult res = [str1 compare:str2];
    switch (res) {
        case NSOrderedAscending:
            NSLog(@"%@ < %@",str1,str2);
            break;
        case NSOrderedDescending:
            NSLog(@"%@ > %@",str1,str2);
            break;
        case NSOrderedSame:
            NSLog(@"%@ == %@",str1,str2);
            break;
        default:
            break;
    }
}
