//
//  main.m
//  inputNSString
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char str[1000];//申明一个char类型数组，也就是字符串
        
        scanf("%s",str);//接收键盘输入的内容
        
        NSString *oc_string = [NSString stringWithFormat:@"%s",str];//将C语言格式的字符串转化为OC格式的字符串
        
        NSLog(@"oc_string : %@",oc_string);
    }
    return 0;
}
