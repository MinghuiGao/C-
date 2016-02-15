//
//  main.c
//  8【掌握】有参宏定义和使用方法
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
#define w(x) x+1
#define max(x,y) x > y? x: y

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("w(2) = %d\n",w(2));
    
    printf("max(1,2) = %d\n",max(1, 2));
    return 0;
}
