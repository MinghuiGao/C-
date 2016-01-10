//
//  main.m
//  6-【理解】类方法应用场景
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"
/*
 	
    类方法的使用场景
        
        类方法在使用的时候不需要创建对象，因此，一些工具方法通常都是以类方法的形式实现的。
    比如：
        枚举值的翻译工具。
        翻译颜色枚举值。
    在实际项目中，会有很多的工具类，这些类中的工具方法，绝大部分都是类方法，使用的时候，直接通过类名来调用。
    这些方法在第一次加载该工具类的时候，就会被加载到内存中，会常驻内存，知道程序结束后，被释放。
    因此，也不能过分地使用，否则会占用大量的内存，也不好。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个Iphone 对象
        Iphone *iphone = [Iphone new];
        iphone->_type = @"iphone 6plus";
        iphone->_color = GOLD;
        
        [iphone showInfo];
    }
    return 0;
}
