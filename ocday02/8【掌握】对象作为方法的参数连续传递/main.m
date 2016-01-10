//
//  main.m
//  8【掌握】对象作为方法的参数连续传递
//
//  Created by 高明辉 on 16/1/9.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
  对象作为方法的参数连续传递
 
    实现功能，士兵开枪 ，枪射击子弹
 
    功能中一共有3个对象：
        1、士兵 soldier
        2、枪  Gun
        3、子弹 Bullet
    分析每个类（一个类由 类名，属性，行为三部分组成。）
        1、士兵类：  
            属性：姓名  枪
            行为：开枪
        2、枪类：
            属性：型号  子弹
            行为：发射（敲击子弹的屁股）
        3、子弹类：
            属性：种类（普通弹，穿甲弹）
            行为：爆炸（响一声，啪）

    如果要完成开枪的功能，需要给士兵什么？给枪和子弹。
    如果枪要射出子弹，需要给枪什么？ 子弹。
 
    注意：这里子弹的对象传给了士兵之后，士兵没有直接发射子弹，而是把子弹传给了枪，让枪去发射子弹。（士兵上战场不能扔子弹打敌人，又不是手榴弹……）
 
 */

// 声明相关的类

#pragma mark Bullet类声明
@interface Bullet : NSObject
{
    @public
    NSString *_type;
}
// 子弹的行为，爆炸
-(void)fire;

@end
#pragma mark Gun类声明
@interface Gun : NSObject
{
    @public
    NSString *_type;
    Bullet *_bullet;
}
// 枪的行为： 发射子弹
-(void)shootBullet:(Bullet *)bullet;

@end
#pragma mark Soldier类声明
@interface Soldier : NSObject
{
    @public
    NSString *_name;
    Gun *_gun;// 必须保证在用刀其他类的时候之前已经声明过。
}

// 士兵的行为： 开枪,需要给把枪，并且给子弹。
-(void)fireGun:(Gun *)gun andBullet:(Bullet *)bullet;

@end

#pragma mark Bullet类的实现
@implementation Bullet
// 子弹开火，就是爆炸，响一声
-(void)fire{
    NSLog(@"啪，%@飞出去了!",_type);
}
@end

#pragma mark Gun 类的实现
@implementation Gun
// 枪的行为： 发射子弹
-(void)shootBullet:(Bullet *)bullet{
    // 1、敲子弹的屁股
    NSLog(@"瞄准，敲子弹的屁股");
    // 2、子弹爆炸
    [bullet fire];
}
@end

#pragma mark Soldier的实现
@implementation Soldier
// 士兵的行为： 开枪,需要给把枪，并且给子弹。
-(void)fireGun:(Gun *)gun andBullet:(Bullet *)bullet{
    // 士兵要做的事，把子弹装到枪里去
    NSLog(@"%@ 把%@ 装到了%@枪里",_name,bullet->_type,gun->_type);
    // 接下来，就需要让枪去发射子弹了
    [gun shootBullet:bullet];
}

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1 创建一个子弹类
        Bullet *bullet = [Bullet new];
        bullet->_type = @"穿甲弹";
//        [bullet fire];// 现在相当于士兵手动捏弹头
        
        // 2 来搞一把枪
        Gun *gun = [Gun new];
        gun->_type = @"左轮手枪";
        // 把子弹装到枪里面然后发射
//        [gun shootBullet:bullet];
        
        
        // 3 把枪和子弹给士兵，实现让士兵来开枪。
        // 创建一个Soldier对象
        Soldier *soldier = [Soldier new];
        soldier->_name = @"许三多";
        //让soldier开抢
        [soldier fireGun:gun andBullet:bullet];
    }
    return 0;
}
