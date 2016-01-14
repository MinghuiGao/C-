//
//  main.m
//  15-【理解】description方法介绍及重写
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    description 方法：（描述的意思）
   
    1、对象的description 方法：
 
        %@,打印一个对象 ,默认打印的是<Person: 0x100103b80>
        作用：
            当我们以％@的格式打印的对象的时候，调用的来获取对象描述信息的一个方法。
     
        如果我们要进行对象描述信息的定制，那么我们重写父类的description方法。
     
        注意：
            不要在description方法中使用self来生成描述信息。会造成循环调用，程序崩溃。
 
    2、类的description方法：
        类也是对象，获取类对象的方法是[类名 class］；
        
        重写类的description方法，类方法。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        p->_name = @"班长" ;
        p->_age = 18;
        p->_height  = 1.8f;
        NSLog(@"%@",p);
        
        // 打印类对象的描述信息
        NSLog(@"%@",[Person class] );
        
    }
    return 0;
}
