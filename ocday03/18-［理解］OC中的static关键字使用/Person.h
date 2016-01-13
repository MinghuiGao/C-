//
//  Person.h
//  ocday03
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

//NSString *sex = @"femal";// 在。h文件中定义全局变量，必须加static。
//static NSString *sex = @"femal";
extern int num;
@interface Person : NSObject
{
    //  static不能修饰实例变量。
    NSString *_name;
    int _age;
}
// 不能用static修饰对象方法
-(void)sayHello;

@end
