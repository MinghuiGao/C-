一、改错题
1.
void test();

int main()
{
    struct Date
    {
        int year;
        int month;
        int day;
    };
    
    test();
    return 0;
}

void test()
{
    struct Date date = {2011, 9, 10};
}

2.
int main()
{
    struct Date
    {
        int year;
        int month;
        int day;
    } d1 = {2011, 9, 10};
    
    struct Date
    {
        int year;
        int month;
        int day;
    } d2 = {2010, 10, 11};
    return 0;
}

3.
#include <stdio.h>

int main()
{
    struct Student
    {
        int age;
        char *name;
    };
    
    Student stu;
    
    printf("请输入年龄：\n");
    scanf("%d", stu.age);
    printf("请输入姓名：\n");
    scanf("%s", &stu.name);
    return 0;
}

4.
#include <stdio.h>

typedef struct
{
    int age;
    char *name;
} Student;

typedef Student * StuP;

int main()
{
    Student stu;
    
    StuP p = &stu;
    
    p.age = 10;
    p.name = "rose";
    return 0;
}
二、分析题
1.
2.
3.
三、编程题
1.
/*
 1.定义一个结构体变量（包括年、月、日），计算该日在本年中为第几天？（注意考虑闰年问题），要求写一个函数days，实现上面的计算。由主函数将年月日传递给days函数，计算后将日子传递回主函数输出。
 */
2.
/*
2.某班有5个学生，三门课。分别编写3个函数实现以下要求：
（1） 求各门课的平均分；
（2） 找出有两门以上不及格的学生，并输出其学号和不及格课程的成绩；
（3） 找出三门课平均成绩在85-90分的学生，并输出其学号和姓名
 */
3.
/*
 模拟n个人参加选举的过程，并输出选举结果：假设候选人有四人，分别用A、B、C、D表示，当选某候选人时直接输入其编号(编号由计算机随机产生)，若输入的不是A、B、C、D则视为无效票，选举结束后按得票数从高到低输出候选人编号和所得票数。
*/

4.
/*
 主函数创建5个学生的数组，写一个排序函数，让学生按姓名从小到大排序，主函数输出排序后的结果
*/