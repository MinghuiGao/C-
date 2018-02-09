using namespace std;

#include <iostream>
#include "chapter2/阶乘之和/MutipleSteps.h"
#include "chapter2/数据结构和基本排序/SortAlgorithm.h"

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

int main() {
    std::cout << "Hello, World!" << std::endl;

    //testSort();

    return 0;
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

