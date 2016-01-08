//
//  main.m
//  5【掌握】对象和方法之间的关系
//
//  Created by 高明辉 on 16/1/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
    对象和方法之间的关系
        1、对象作为方法的参数（方法的参数，是一个类类型）
 
        2、对象作为方法的返回值 （返回值的类型，是一个了类型）
 
 
 
 
 
 */
// 创建一个Person类
// 属性：姓名 年龄  身高
// 行为： 走
#pragma mark -person类
@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
    float _height;
}

@end

@implementation Person
-(void)discPerson:(Person *)person{
    NSLog(@"name = %@, age = %d,height = %.2f",person->_name,person->_age,person->_height);
}
@end

// 定义以个警察类，专门查人
#pragma mark -police类

@interface Police : NSObject
{
    NSString *_name;
}
// 检查人的信息
-(void)checkPerson:(Person *)person;

// 修改人的名字
-(Person *)changeName:(Person *)person;

@end

@implementation Police

-(void)checkPerson:(Person *)person{
    NSLog(@"name:%@  age :%d  height :%.2f",person->_name,person->_age  ,person->_height);
}

-(Person *)changeName:(Person *)person {
    person->_name = @"铁面公主";
    NSLog(@"change Name，name : %@, age = %d,height : %.2f",person->_name,person->_age,person->_height);
    return person;//这里返回的是传进来的那个person。
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个Person对象
        Person *p = [Person new];// 申请空间   初始化   返回对象的首地址。
        // 给person赋值
        p->_name = @"狂草天";
        p->_age = 18;
        p->_height = 1.8f;
        
        
        // 创建一个police对象
        Police *police = [Police new];
        //使用对象来作为对象方法的参数
        // 让警察去检查某个人
        [police checkPerson:p];// 打印出p的内容，将对象p作为方法的参数传入之后，访问的就是p的内存空间。
        
        
        // 修改别人的名字
        Person *p2 = [police changeName:p];
        NSLog(@"p2->name ; %@",p2->_name);

        
    }
    return 0;
}
