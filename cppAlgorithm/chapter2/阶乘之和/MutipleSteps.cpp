//
// Created by gaomh on 18-2-9.
//

#include <stdio.h>
#include "time.h"
#include "MutipleSteps.h"

int sum(int n){
    return 100;
}

int MutipleSteps::sum(int n) {
    const int mod = 100000;
    int sumRes = 0;
    for (int i = 1; i <= n; ++i) {
        int tmp = 1;
        int j;
        for (j = 1; j <= i; ++j) {
            tmp = (( tmp * j) % mod);
        }
        sumRes = ((sumRes + tmp)% mod);
    }
    printf("time user = %d\n",clock());
    return sumRes;
}

int MutipleSteps::sumMutiple(int n) {
    return this->sum(n);
}


