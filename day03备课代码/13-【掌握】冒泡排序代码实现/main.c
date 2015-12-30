//
//  main.c
//  13-【掌握】冒泡排序代码实现
//
//  Created by 高明辉 on 15/12/29.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    /*
     冒泡排序法：一种排序算法。
        算法：解决问题的方法。
        通过比较数组种中相邻两个元素的大小来交换元素的位置，最终使得数组有序的排序算法。
     冒泡排序的过程：
        在一趟比较中，找到一个最大数。
       如： 23 6 1 17 9
        第一趟比较结束： 6 1 17 9 23   i = 0, 比较 4次  n-1 -i
        第二趟：        6 1 9 17 23   i = 1， 比较 3次
        第三趟:         6 1 9 17 23   i＝ 2， 比较2次
        第四趟：        1  6 9 17 23   i＝ 3， 比较1次
        每次找到一个当前最大的数，放到最后，那么需要使数组有序，需要比较多少趟？n-1趟。
     
     */
    int nums[] = {23,6,1,17,9};
    int n = sizeof(nums)/ sizeof(int);
    //确定比较的趟数：n-1 趟
    for (int i = 0 ; i < n-1; i++) {
        //每一趟的比较，在未排序的元素中找到一个最大的，然后放到合适的位置（比左边的大，比右边的小）
        for (int j = 0; j < n - 1 - i; j++) {
            // 比较，交换
            if(nums[j] > nums[j+1]){
                //如果左边的比右边的大，那么交换两个数
                int temp ;
                temp = nums[j];
                nums[j] = nums[j+1];
                nums[j+1] = temp;
            }
        }
    }
    // 打印排序后的数组
    for (int i = 0; i < n; i++) {
        printf("%d ",nums[i]);
    }
    printf("\n");
    return 0;
}
