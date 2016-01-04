//
//  main.c
//  12【掌握】const作用和使用方法
//
//  Created by 高明辉 on 15/12/31.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     1、const是C语言提供的1个关键字。
        作用：在声明变量的同时来修饰这个变量。
     
     
     2、 如果1个变量在声明的时候被const修饰,代表这个变量的值无法更改.
        像这样的数据 我们也叫做常量（read-only）。
     
     
     3、const修饰 int float double char(基本数据类型)的变量。
        标示它是一个常量（只读变量）。
     
     
     4、 const可以修饰数组.
     
        被const修饰的数组, 那么这个数组的元素的值是无法改变的。
        无论是通过下标还是通过指针都无法更改。
        const也可以放在类型的后面
     
     
     5、const修饰指针.
     
     const int *p1 = &num;
     无法通过p1去修改p1指向的变量的值.
     *p1 = 100;//这样是不行的。
     
     但是p1的指向是可以改的。
     
     
     6、一般情况下，const变量的值 要求在声明的同时必须初始化，否则就没有意义。
     
     7、什么时候使用const
     
     1). 如果程序运行期间的 某些数据不会发生变化 那么我们就可以将其修饰为const。
     
     const  width = 800;
     height = 600;
     
     希望变量的数据不被任何人修改.这个时候就可以const.
     
     
     2). 将指针作为函数的参数的时候. 在函数的内部可以使用指针去修改实参变量的值.
     但是某些情况下. 不希望通过形参指针去修改指向的变量.

     
     */
    
    const int arr[] = {100,200,300};
//    arr[0] =  100; // 报错，无法修改
    
    
    int *p1 = arr;
//    *p1 = 100;// 无法修改
    
    
    int const b = 100;//  const 放在类型后面也是可以的。
//    b = 1;
    
    
    // const修饰指针
    int num = 10;
    int const *p2 = &num;
//    *p2 = 100;// 无法通过指针来修改其指向变量的值。屏蔽了变量的间接访问。
    num = 100; // 通过变量名区直接访问变量，可以。
    const int *p3 = &num; // 同上
    
    
    
    int * const p4 = &num;// 指针p4的指向不能改变
    *p4 = 1000;// 但可以通过指针来间接访问变量
    int num2 = 19;
//    p4 = &num2;// 报错，不能修改指针p4的指向
    
    
    int * const p5;// 一般情况下， const修饰的变量的值，需要在定义的时候就初始化，否则没有意义。
    int const *p6;
    p6 = &num;

    
    
    return 0;
}
