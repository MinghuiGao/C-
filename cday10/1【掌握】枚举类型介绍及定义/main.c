//
//  main.c
//  1【掌握】枚举类型介绍及定义
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    enum WeekDay {Monday,Sunday,Sat,Fri};//  默认从0开始赋值。
    enum Season {spring = 1,summer = 10,autumn = 100,winter = 1000};
//    Monday = 100;// 错误
//    Monday = Sunday;// 错误
    printf("Monday = %d, spring = %d\n",Monday,spring);
    
    enum WeekDay aa;
    aa = Sunday;
    printf("weekday = %d\n",aa);
    return 0;
}
