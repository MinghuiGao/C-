//
//  Person.h
//  ocday05
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
    float _height;
    float _weight;
    //...
}
-(void)setName:(NSString *)name;
-(NSString *)name;
// ...
// 这里使用@property指令来自动生成setter和getter方法的声明。

@property int age;// 去掉下划线的实例变量名，注意，跟后面自动生成的方法名也有关系。
@property float height;
@property float weight;

// 声明一个没有的属性
@property  int sex;

@end

