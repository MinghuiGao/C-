//
//  Person.m
//  ocjqday01
//
//  Created by 高明辉 on 16/1/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"
@implementation Person
-(void)sayHi{
    NSLog(@"person say hi.");
}

// 现实person的游戏放假
-(void)showInfo{
    NSLog(@"%@  在 %@ 房间玩游戏. ",_name,_room.name);
}
-(void)setRoom:(Room *)room{
    // 如果要设置的独享和当前的实例变量是同一个对象，那么不执行retain操作，也不重新赋值。
    if (_room == room ) {
        return;
    }
    [room retain];
    _room = room;
}
-(Room *)room{
    return _room;
}


-(void)setName:(NSString *)name{
    _name = name;
}
-(NSString *)name{
    return _name;
}


// 重写dealloc方法
-(void)dealloc{
    /* 重写dealloc方法的规则：
        1、在dealloc方法中将对象所占用的资源释放
        2、调用父类的dealloc方法， 并且必须要在方法的最后调用。
    */
    NSLog(@"%@被销毁了",_name);
    // 在person对象被销毁的时候要把所占用的资源也要释放
    // 比如实力变量所指向的对象，要release一下，表示当前对象不再引用实力变量。
    [_room release];
    [super dealloc];
}
@end
