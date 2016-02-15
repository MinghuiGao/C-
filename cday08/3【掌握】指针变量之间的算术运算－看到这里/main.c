//
//  main.c
//  3【掌握】指针变量之间的算术运算－看到这里
//
//  Created by 高明辉 on 16/2/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
/* 指针变量之间的算数运算
    指针变量中存的是地址，是一个整数值。
    
    注意：
        只有指向同一个数组的两个指针才能进行运算，否则没有意义。
        而且，只能进行减法运算。
    结论：
        指向同一个数组的指针变量相减的结果是两个指针变量之间相差的元素个数。
        
        numsP --> nums[0];
        numsp2 --> nums[3];
 
 
 */
int main(int argc, const char * argv[]) {
    int  nums[] = {1,2,3,4,5};
    int *numsP = nums;
    
    int *numsP2 = &nums[3];// numsPs 指向下标元素为3的元素地址。
    
    printf("numsP = %p,numsP2 = %p\n",numsP,numsP2);
    
    printf("numsP2 - numsP = %d\n",numsP2-numsP);
    
    long int p1 = 0x7fff5fbff780l;
    long int p2 = 0x7fff5fbff78cl;
    printf("p2 - p1 = %ld\n",p2-p1);
    printf("p2 - p1 / sizeof(int) = %d\n",(p2-p1)/sizeof(int));
    return 0;
}
