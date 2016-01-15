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
 
}
// 使用@property来简化getter、setter方法的声明
@property NSString *name;
@property int age;
@property float height;
@property float weight;

@end
