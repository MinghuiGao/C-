//
//  Person.m
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}

-(void)setAge:(int)age{
    _age = age;
}
-(int)age{
    return _age;
}

-(void)run{
    
    NSLog(@"人在跑"   );
}


-(void)work{
    Person *p1 = [Person new];
    NSLog(@"年龄 = %d",p1->_age);
    NSLog(@"年龄 = %d",self->_age);// 可以通过self来直接使用实例变量。
    // 如果人的工作就是跑，那么如何调用run方法呢？
    // 可以通过self来调用。
    [self run];
    
    // 打印一个对象的地址，可以使用％@，也可以使用％p，直接传对象名就可以。
    NSLog(@"self = %@,self = %p",self,self);
    NSLog(@"人在工作");
}
@end
