//
//  main.m
//  13-【掌握】依赖关系2
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RichMan.h"
#import "Iphone.h"
#import "Beauty.h"

/*
    依赖关系
        如果A对象在完成某个行为时，需要用到另一个对象B，那么认为 A 依赖于 B。
        比如将B作为A的对象方法的参数。
    案例：
        土豪用iPhone7 给美女打电话。
        土豪：
            属性：
                名字
                电话
            行为：
                打电话
        美女 
 
            属性：名字 电话
            行为：打电话（目前先不实现）
        iphone
            属性：型号（type）
 
    总结：
        依赖关系，简而言之就是用到了谁就依赖谁。不论是用的方法，还是实力变量，都算依赖。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 完成这个过程
        RichMan *rm = [RichMan new];
        [rm setName:@"班长"];
        [rm setTelNo:@"110"];
        // 搞一部手机
        Iphone *iphone = [Iphone new];
        [iphone setName:@"iphone 7 plus"];
        
        // 找一个美女
        Beauty *beauty = [Beauty new ];
        [beauty setName:@"凤姐" ];
        [beauty setTelNo:@"120120120"];
        
        
        [rm call:iphone andBeauty:beauty ];

        
    }
    return 0;
}
