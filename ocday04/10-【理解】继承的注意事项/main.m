//
//  main.m
//  10-【理解】继承的注意事项
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "ShoutSkyDog.h"

/*
 
    继承的注意事项
    1）子类中定义的变量名不能和父类中的变量名重名。否则报错。
 
    2) OC中的继承是单继承，即子类只能有一个父类。但是支持多重继承。
    NSObject
        ^
        ｜
     Animal
        ^
        ｜
       Dog
        ^
        ｜
     ShoutSkyDog // 其中的age是从Animal类中继承过来的。因此支持多重继承。
    3) 继承体系中对象方法的调用顺序。
        原则：现在子类的实现中找，找不到就继续在父类的实现中找，一直向上去找方法的实现，直到找到NSObject，如果在NSObject的实现中仍没有，那么会报错。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [Dog new];
        [dog eat];
        [dog eat];
        [dog eat];
        [dog eat];
//        [dog setWeight:10];
//        NSLog(@"%d",[dog weight]);
        
        ShoutSkyDog *ssd = [ShoutSkyDog new];
        [ssd setAge:10000];
        [ssd eat];
        [ssd shout];
        
    }
    return 0;
}
