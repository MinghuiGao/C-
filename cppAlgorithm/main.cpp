using namespace std;

#include <iostream>
#include "chapter2/阶乘之和/MutipleSteps.h"
#include "chapter2/数据结构和基本排序/SortAlgorithm.h"
#include "chapter2/execersise/Subse2.h"
#include "chapter3/ArraySome.h"

class Person {
public:
    string name;
    int age;

    void showInfo() {
        cout << name << " is " << age << endl;
    }

private:
    void growUp(int addAge) {
        this->age += addAge;
    }

};


void testSort();

void testXulie();

int main() {
    std::cout << "Hello, World!" << std::endl;
    ArraySome *some = new ArraySome();
    //some->shutdownTheLight();
    //some->snakeFill();
    //printf("is huiwen : %d\n",some->isHuiwen());
//    printf("%s\n", some->findMinDicString());
    //some->findMinDicString();
    some->sumOScore();
    return 0;
}

void testXulie() {
    Subse2 *s2 = new Subse2();
    //s2->subsequence();
    s2->permutation();
}

void testSort() {
    int nums[] = {19, 2, 14, 3456, 2, 34, 6, 98};
    SortAlgorithm *sortAlgorithm = new SortAlgorithm();
    int len = sizeof(nums) / sizeof(int);
    //sortAlgorithm->bubleSort(nums, len);
    sortAlgorithm->quickSort(nums, len);
    for (int i = 0; i < len; ++i) {
        cout << nums[i] << ",";
    }
}

void fun1() {
    Person *p = new Person();
    p->name = "gapmh";
    p->age = 12;
    p->showInfo();
    MutipleSteps *steps = new MutipleSteps();
    int res = steps->sumMutiple(9999);
    cout << "res is " << res << endl;
}

