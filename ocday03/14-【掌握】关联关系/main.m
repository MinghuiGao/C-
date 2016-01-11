//
//  main.m
//  14-【掌握】关联关系
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Ipad.h"
/*
    关联关系
        标示一个对象拥有另一个对象作为实力变量，是一个has－a的关系。
        而且两者之间的关系是稳定的关系。
        比如人出门打车，做一两出租车，可以说人依赖于出租车。这里出租车和人之间只是暂时的关系，人使用了出租车，因此他们之间是依赖关系，人出行依赖出租车。
        但如果一个人有一辆私家车，那么就不仅仅是依赖关系了，相关程度就提高了。比如在人这个类里，可以有一个汽车类的实力变量。表示这个个有一辆车。那么人和车之间就是关联关系，因为这个人的私家车是和人一直产生关系的。
        注意：
            关联关系的耦合程度要高于依赖关系。
    案例：
        人又一个ipad，使用ipad放歌听。
    
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 人，使用ipad放歌听。
        // 1 创建一个人
        Person *person = [Person new];
        [person setName:@"凤姐"];
        // 2 创建一个ipad，并给人
        Ipad *ipad = [Ipad new];
        [ipad setType:@"iPad air 2"];
        // 把ipad作为person的属性设置进去，因此，person和ipad之间属于关联关系。并不仅仅是一使用的关系。
        [person setIpad:ipad];
        // 3 人听歌。
        [person listenMusic];
    }
    return 0;
}
