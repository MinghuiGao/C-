//
//  main.m
//  13-【理解】应用:通过中介找房子
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "HouseMedia.h"
#import "MediaProtocal.h"
/*
     思考&实现1:
        通过代理模式设计,学生通过中介找房子的过程
 
        学生的类 属性:id<找房子的协议> delegate;
        目标:找到房子
        
        中介类:链家
         行为:找房子 findHome
            
            中介类:我爱我家
         行为:找房子
            找房子协议:
         找房子
 
 
    1、定义一个中介协议，规定中介有找房子的功能。
    2、创建一个房屋中介类 HouseMedia，遵守中介协议，并实现中介协议中的方法。
    3、创建一个Student类，并提供 id<MediaProtocal> delegate 属性，涌来保存自己的中介代理对象。
    4、在Student类的找房子的方法中，调用中介代理delegate的findhoses方法。
    5、在main中创建一个HouseMedia对象，并将其赋值给Student对象的delegate属性。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个student对象
        Student *stu = [Student new];
        stu.name = @"小明";
        
       // 创建一个中介
        HouseMedia *hm = [HouseMedia new];
        hm.name = @"天下是我家";
        
        // 给student设置代理
        stu.delegate = hm;
        
        // 当学生要找房子的时候，调用其代理的找房子方法，让代理帮学生找房子。
        [stu findHouse];
        // 这里虽然是stu调用的findHouse方法，但事实上是stu找了自己的代理来完成了找房子的功能。
        
        
        
        
    }
    return 0;
}
