//
//  main.m
//  14-【掌握】OC中的私有(相对私有)方法
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    OC中的私有方法（相对）
    1、在OC中没有私有方法，但是有相对私有的方法，和私有方法差不多作用。
    
    2、OC中相对私有方法的实现：
        在.m文件中直接实现，不在.h文件中声明。
        用法：
            不能在类的外部直接访问，只能通过其它的对象方法来调用。
    3、OC中的相对私有方法在子类中的使用：
        在子类当中，不可访问，也不能被继承。完全不可见。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p eat];
        
//        [p work];// 没有在@interfaec中声明，因此在类的外部，无法使用。
    }
    return 0;
}
