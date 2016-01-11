//
//  main.m
//  13-【掌握】依赖关系
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tuhao.h"

/*
    依赖关系
        A对象的某个行为用到了B对象，那么A就依赖B。
    
    举个例子：
        土豪用Iphone7给美女打电话。
        对象：
            土豪：
                名字
                电话号码：
                行为：
                    打电话
                    发短信
            美女：
                名字
                电话号码
                行为：
                    打电话、发短信（但这里我们不实现这两个行为）。
    Iphone；
        属性：
            型号
    总结：
        A对象依赖于B对象，那么A在执行某些对象方法的时候需要B的对象作为参数传进去。
        用到谁就依赖谁。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 完成过程
        Tuhao *th = [Tuhao new];
        [th setName:@"班长"];
        // 创建一个iphone
        Iphone *iphone = [Iphone new];
        [iphone setType:@"iPhone 7 plus"];
        // 创建一个美女
        Beauty *beauty = [Beauty new];
        [beauty setName:@"凤姐"];
        [beauty setTelNum:@"120"];
        // 土豪要给美女打电话，依赖于电话，依赖于美女,当有了这两个依赖的对象之后，打电话的行为才能完成。
        [th call:iphone andBeauty:beauty];
        
    }
    return 0;
}
