//
// Created by gaomh on 18-2-12.
//

#include "Subse2.h"
#include <stdio.h>

void Subse2::subsequence() {

    int n = 0, m = 0;
    int input = scanf("%d,%d", &n, &m);
    printf("input = %d\n", input);
    while (scanf("%d,%d", &n, &m) == 2) {
        if (m == 0 && n == 0) {
            break;
        }
        double sum = 0.0f;
        for (int i = n; i <= m; i++) {
            sum += (1.0f / (i * i));
        }
        printf("sum = %.5f\n", sum);
    }
}

void resultOne(int num, int *res_add, int *res_mul) {
    int i, j, k;
    i = num / 100;
    j = num / 10 % 10;
    k = num % 10;
    *res_add += i + j + k;
    *res_mul *= i * j * k;
}

// 排列用123...9 组成三个三位数,adc ,def,ghi ,要求 ABC:def:ghi为1:2:3
void Subse2::permutation() {
    int i, j, k;
    int res_add, res_mul;
    // 这里能求出i的范围,因为要满足比例,所以从最小的123到最大的329为止,329 * 3 = 987.
    for (i = 123; i <= 329; i++) {
        j = i * 2;
        k = i * 3;
        res_add = 0;
        res_mul = 1;
        // 分别求出三个数各位上的数字的和和乘机,要求满足条件,
        // 通过 以上两个条件可以选出符合的三个数.

        resultOne(i, &res_add, &res_mul);
        resultOne(j, &res_add, &res_mul);
        resultOne(k, &res_add, &res_mul);
        if (res_add == 45 && res_mul == 362880) {
            printf("%d %d %d\n ", i, j, k);
        }
    }
}

