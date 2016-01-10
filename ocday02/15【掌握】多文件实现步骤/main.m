//
//  main.m
//  15【掌握】多文件实现步骤
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bullet.h"
#import "Gun.h"
#import "Soldier.h"
/*
 多文件开发的好处：
     1、便于团队写作
     2、代码更安全，对完只提供接口
     3、把不同功能，放到不同的累中，便于重用，代码可读性好。
 多文件开发的实现思路：
    把类的声明和实现分离。
        类的声明保存到.h文件中
        类的实现放在.m文件中。
        如果要使用其它，那么import其它类的头文件就可以了。
 
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //  在main函数中，创建一个士兵，然后让士兵开枪
        
        // 创建一个子弹
        Bullet *bullet = [Bullet new];
        bullet->_type = @"穿甲弹";
        
        // 创建一把枪
        Gun *gun = [Gun new ];
        gun->_type = @"沙漠之鹰";
        
        
        // 创建一个士兵
        Soldier *soldier = [Soldier new];
        soldier->_name = @"宝宝";
        [soldier fireGun:gun andBullet:bullet];
        
    }
    return 0;
}
