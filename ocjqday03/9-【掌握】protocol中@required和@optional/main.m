//
//  main.m
//  9-【掌握】protocol中@required和@optional
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
/*
    @protocol 中的的两个关键字
        @required
            表示所修饰的方法必须要实现，如果不实现，编译器会报警告。
            缺省状态下时 @required
 
        @optional
            表示所修饰的方法可选实现，如果不实现，编译器不会报警告。
    
    注意：
        作用域时从关键字开始，到下一个关键字结束，如果后面没有关键字，那么直到@end结束。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *p = [[Player alloc]init];
        [p run];
        [p kill];
        
        [p shout];
    }
    return 0;
}
