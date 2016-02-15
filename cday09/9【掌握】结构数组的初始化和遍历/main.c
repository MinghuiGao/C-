//
//  main.c
//  9【掌握】结构数组的初始化和遍历
//
//  Created by 高明辉 on 16/2/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
void thinkAndImplementation();
int main(int argc, const char * argv[]) {

    struct stu{
        int age;
        char *name;
    };
    // 定义的同时初始化
    struct stu students[2]={
        {18,"jordan"},
        {23,"fengjie"},
    };
    printf("student[1]: name = %s,age = %d\n",students[0].name,students[0].age);
    
    
    // 先定义再初始化，整体赋值。
    struct stu boys[4];
    boys[0] = (struct stu){18,"cater"};// 整体赋值时要进行强制类型转换。
    
    // 逐个成员赋值
    struct stu girls[2];
    girls[0].name = "pretty";
    girls[0].age = 12;
    printf("girls[0]: namge = %s,age = %d\n",girls[0].name,girls[0].age );
//    1)定义的同时进行初始化
//    struct stu s[2]={{12,"sb"},{18,"fengjie"}};
//    
//    2)先定义,后初始化,整体赋值
//    s[1]=(struct stu){23,"xiaoluo"};
//    3)先定义,后初始化
//    s[1].age=12;
//    strcpy(stu[1].name, "xxoo"); 

    thinkAndImplementation();
    
    return 0;
}
/*
     struct stu{
         int num;
         char *name;
         char sex;
         float score;
     };
     //1、定义结构体数组
     struct stu boy[5]={
         {101,"Li ping",'F',45},
         {102,"Zhang ping",'M',62.5},
         {103,"He fang",'F',92.5},
         {104,"Cheng ling",'M',87},
         {105,"Wang ming",'M',58}
     };
     1)利用上面stu的结构体,计算学生平均成绩和不及格的人数
     2)打印80-100分学生的成绩及姓名

 */
void thinkAndImplementation(){
    
    struct stu{
        int num;
        char *name;
        char sex;
        float score;
    };
    //1、定义结构体数组
    struct stu boy[5]={
        {101,"Li ping",'F',45},
        {102,"Zhang ping",'M',62.5},
        {103,"He fang",'F',92.5},
        {104,"Cheng ling",'M',87},
        {105,"Wang ming",'M',58}
    };
    // 计算平局成绩
    float total = 0.0f;
    // 统计不及格人数
    int failedCount = 0;
    for (int i = 0; i < 5; i ++) {
        // 遍历结构体数组，访问score成员。
        total += boy[i].score;
        // 判断不及格
        if (boy[i].score < 60) {
            failedCount ++;
        }
        // 打印80-100分学生的成绩及姓名
        if (boy[i].score >= 80 && boy[i].score <= 100) {
            printf("name = %s\n",boy[i].name);
        }
    }
    // 计算平均成绩
    float avg = total / 5;
    printf("avg = %.2f\n",avg);
    printf("不及格人数：%d\n",failedCount);
    
    
    
    
}
