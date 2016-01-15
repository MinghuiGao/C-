//
//  main.m
//  6-【掌握】@property使用注意事项
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    @property使用的注意事项：
    
    1）在代码中的位置：
        @property 指令，只能写在@interface 和@end之间，并且在｛｝ 之外。
        如果声明的类型相同，可以在一句指令中声明多个属性的方法。
    2）@property在使用时接的名称的细节。
        @property 类型1  名城1；
        类型1:属性类型，getter方法返回值类型，setter方法形参类型。
        名称1:严格意义上讲是生成的方法的名称。建议使用去掉下划线的变量名。
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {

    }
    return 0;
}
