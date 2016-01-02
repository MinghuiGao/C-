//
//  main.c
//  2-【掌握】一维数组定义及注意事项
//
//  Created by 高明辉 on 15/12/30.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     什么是一维数组：所有元素都不是数组的数组。
     一维数组声明的形式：
         数据类型 数组名[数组长度];
     
     一维数组声明的6个注意事项：
        1、数组的类型，就是数组中元素的数据类型，并且：数组中所有元素的数据类型都相同。
        2、数组名的命名应符合标示符的命名规范，数组名也是一个表示符。
            标示符的命名规则：
                1、只能有字母、数字、下划线、美元符号$组成
                2、不能以数字开头
                3、不能和关键字重名
                4、区分大小写字母
        3、数组名不能与其它变量同名。
        4、方括号中的数量表示的是数组元素的个数。
        5、只能使用常量来表示数组的长度（c99），但是，在Xcode中，可以。
        6、可以在同一个类型说明中，声明多个数组和变量。
     
     注意事项：
        1、数组的类型＝＝ 数组元素的数据类型
        2、数组名的命名要符合表示符的命名规范。
        3、数组名不能与其它变量同名
        4、数组声明中［］中的内容表示数组的长度
        5、在C99标准中，只能用常量来表示数组长度
        6、可以在同一个类型说明中，声明多个数组和变量。
     
     
     */
    //nums就是一个包含10个int类型元素的一维数组。
    int nums[10];
    
    // 声明一个包含5个float类型元素的一维数组：
    float fs[5];
    
    // 声明一个包含100个char类型元素的一维数组：
    char chs[100];
    
    
//    int arr;
//    int arr[10]; // 数组名不能与其它变量同名
    int len = 10;
    int arr[len];// 注意；在C99标准中，不允许使用变量来声明数组长度，但是在Xcode中，可以通过编译。
    int arr2[len+1];//  使用变量表达式也可以。
    
    
    int a,b,arr3[10];//  可以在同一个类型说明中，声明多个数组和变量。
    return 0;
}
