//
//  main.m
//  9-【理解】基类和派生类之间的关系
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Father.h"
#import "Son.h"
/*
    基类（父类）和派生类（子类）之间的关系
    
        1、关系就是子类可以从父类继承属性和方法
        注意点：
            1）不是所有父类的属性 子类都可以继承，比如父类私有的属性，子类就不可以继承。
            2）OC中的继承是单继承，也就是每个子类只能有一个父类。但是一个父类可以派生出多个子类。
            3）注意继承的合理性。人继承人，妖继承妖。
        2、方法的重写
            什么叫方法的重写：
            在子类中将父类的方法重新实现，也可以理解为用子类的实现覆盖掉父类的实现。
            注意：
                如果在子类中不重写父类中的方法，那么默认会调用父类中的方法。如果实现了，那么就调用子类中的。
        3、 super关键字
            重写父类的方法后，可以通过super来调用该方法在父类中的实现。
        
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //  创建一个father
        Father *father = [Father new];
        [father setName:@"张学军"];
        
        Son *son = [Son new];
        [son setName:@"三环十三少"];
        
        [father showInfo];
        [son showInfo];
    }
    return 0;
}
