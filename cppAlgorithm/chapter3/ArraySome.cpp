//
// Created by gaomh on 18-2-12.
//

#include "ArraySome.h"
#include <string.h>
#include <stdio.h>

void ArraySome::shutdownTheLight() {
    int lightCount = 0, personCount = 0;
    // 1. 输入灯数
    printf("input the count of light:\n");
    scanf("%d", &lightCount);
    // 2. 输入人数
    printf("input the person count :\n");
    scanf("%d", &personCount);

    // 3. 创建灯数组并设置初始状态
    char *lightState = new char[lightCount]();
    memset(lightState, 0, lightCount);

    // 4. 进行关灯操作
    for (int i = 1; i <= personCount; ++i) {
        for (int j = 0; j < lightCount; ++j) {
            if (j % i == 0) {
                lightState[j] = !lightState[j];
            }
        }
    }

    // 5. 打印开灯的编号
    for (int k = 0; k < lightCount; ++k) {
        if (lightState[k]) {
            printf("%d ", k + 1);
        }
    }

}

void ArraySome::snakeFill() {

    int n = 0;
    printf("input n :\n");
    scanf("%d", &n);

    int arr[n][n];

    memset(arr, 0, n * n * sizeof(int));

    // 用t来记录填充的值 ,从1开始直到填满(n*n)
    int t = 1;
    // 设置初始的行列
    int row = 0, col = n - 1;
    arr[row][col] = t;

    while (t < n * n) {
        // 使用四个循环来分别填充四个方向
        while (row < n - 1 && !arr[row + 1][col]) arr[++row][col] = ++t;
        // 判断下一个元素是否可以填充,条件是: 1没有被填充过值 2没有出界.
        while (col > 0 && !arr[row][col - 1]) arr[row][--col] = ++t;
        while (row > 0 && !arr[row - 1][col]) arr[--row][col] = ++t;
        while (col < n - 1 && !arr[row][col + 1]) arr[row][++col] = ++t;
    }
    // 打印结果
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            printf("%3d", arr[i][j]);
        }
        printf("\n");
    }


}

bool ArraySome::isHuiwen() {
    // 1 input str
    char str[100];
    printf("input str:\n");
    scanf("%s", str);
    size_t len = strlen(str);

    for (int i = 0; i < len / 2; ++i) {
        if (str[i] != str[len - i - 1]) {
            return false;
        }
    }
    return true;
}

void ArraySome::findMinDicString() {
    // input
    char str[100]= {0};
    printf("input str:\n");
    scanf("%s", str);
    // 默认最小串随便指向输入的顺序
    size_t len = strlen(str);
    int minCur = 0;
    for (int i = 1; i < len; ++i) {
        // 判断当前第i个位置的串和minCur的串谁小, 让minCur始终标记最小串的起始
        for (int j = 0; j < len; ++j) {
            char minCurchar = str[(minCur + j) % len];
            char iChar = str[(i + j) % len];
            if (minCurchar == iChar)
                continue;
            else {
                // 只要不相等就需要break,并且在满足条件的时候给minCur重新赋值.
                if (minCurchar > iChar) {
                    minCur = i;
                }
                break;
            }
        }
    }
    for (int k = 0; k < len; ++k) {
        putchar(str[(k+minCur)%len]);
    }

}

void ArraySome::sumOScore() {
    char oScore[80];
    int score = 0;
    int sumScore = 0;
    printf("input ooxx:\n");
    scanf("%s",oScore);

    size_t len = strlen(oScore);

    for (int i = 0; i < len; ++i) {
        if(oScore[i] == 'o'){
            score += 1;
        }else{
            score = 0;
        }
        sumScore += score;
    }
    printf("o score is %d\n",sumScore);
}
