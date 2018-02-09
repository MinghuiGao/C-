//
// Created by gaomh on 18-2-9.
//

#include "SortAlgorithm.h"

void quickSortImpl(int *num, int left, int right);

int *SortAlgorithm::bubleSort(int *num, int len) {
    for (int i = 0; i < len; ++i) {
        for (int j = 0; j < len - i - 1; ++j) {
            if (num[j] > num[j + 1]) {
                num[j] ^= num[j + 1] ^= num[j] ^= num[j + 1];
            }
        }
    }
    return num;
}

int *SortAlgorithm::quickSort(int *num, int len) {
    quickSortImpl(num, 0, len - 1);
    return nullptr;
}

void quickSortImpl(int *num, int left, int right) {
    if (left >= right) return;
    int i = left, j = right, key = num[left];
    while (i < j) {
        while (i < j && key <= num[j]) {// 注意key<= num[j] 时就向后移动,如果不加= 则会造成循环不想下进行.
            j--;
        }
        num[i] = num[j];
        while (i < j && key >= num[i]) {
            i++;
        }
        num[j] = num[i];
    }
    num[i] = key;
    quickSortImpl(num, left, i - 1);
    quickSortImpl(num, i + 1, right);
}

