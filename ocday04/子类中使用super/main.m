//
//  main.m
//  子类中使用super
//
//  Created by 高明辉 on 16/1/22.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *dog = [[Dog alloc] initWith:@"旺财" andAge:10 andLegs:4];
        [dog dogEat];
        [dog eat];
        
        [(Animal *)dog eat];//  通过isa指针找到子类，在找其中的方法。虽然转化成了Animal类，但是其中的isa指针仍然指向了Dog类。
    }
    return 0;
}
