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
    int _age;
    float _height;
    float _weight;
}
// 告诉编译器生成_age属性的getter和setter方法的声明。
@property int age;// 这里的age根自动生成的方法名有关。建议使用去掉下划线的变量名。
// 注意 @property 指令，只能写在@interface 和@end之间，并且在｛｝ 之外。

// 一句指令声明多个属性的方法。
@property float height,weight;

@end
