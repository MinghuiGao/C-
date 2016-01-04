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
    // struct Date这个结构体类型是在main函数中定义的
    // 因此struct Date只能用在main函数中
    // struct Date date = {2011, 9, 10};
}
// 1个错误

2.
int main()
{
    struct Date
    {
        int year;
        int month;
        int day;
    } d1 = {2011, 9, 10};
    
    // struct Date类型重复定义了
    struct Date d2 = {2010, 10, 11};
    /*
     struct Date
     {
     int year;
     int month;
     int day;
     } d2 = {2010, 10, 11};*/
    return 0;
}
// 1个错误

3.
#include <stdio.h>
int main()
{
    struct Student
    {
        int age;
        char *name;
    };
    
    // 定义变量时缺少struct关键字
    struct Student stu;
    //Student stu;
    
    printf("请输入年龄：\n");
    
    // age属性缺少地址运算符&
    scanf("%d", &stu.age);
    //scanf("%d", stu.age);
    
    printf("请输入姓名：\n");
    
    // name属性是一个指针，本来就代表了姓名的地址，这里不用写&
    scanf("%s", stu.name);
    //scanf("%s", &stu.name);
    return 0;
}
// 3个错误

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
    
    // p是一个指向结构体变量stu的指针
    // 指针变量访问结构体成员用的是->，不是.
    p->age = 10;
    //p.age = 10;
    p->name = "rose";
    //p.name = "rose";
    return 0;
}
// 2个错误
二、分析题
1.
2.
3.
三、编程题
1.
typedef struct date{
    int year;
    int month;
    int day;
}Date;


BOOL isLeapYear(int year);//判断是否是闰年
BOOL isLeapYear(int year)
{
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0){
        return YES;
    }
    return NO;
}

int days(Date someDate);//计算天数
int days(Date someDate)
{
    int totalDaysFromYearStart = 0;
    switch (someDate.month) {
        case 12:
            totalDaysFromYearStart += 30;
        case 11:
            totalDaysFromYearStart += 31;
        case 10:
            totalDaysFromYearStart += 30;
        case 9:
            totalDaysFromYearStart += 31;
        case 8:
            totalDaysFromYearStart += 31;
        case 7:
            totalDaysFromYearStart += 30;
        case 6:
            totalDaysFromYearStart += 31;
        case 5:
            totalDaysFromYearStart += 30;
        case 4:
            totalDaysFromYearStart += 31;
        case 3:
            totalDaysFromYearStart += 28;
            totalDaysFromYearStart += isLeapYear(someDate.year) ? 1 : 0;
        case 2:
            totalDaysFromYearStart += 31;
        case 1:
        default:
            break;
    }
    totalDaysFromYearStart += someDate.day;
    return totalDaysFromYearStart;
}

2.
typedef struct course{
    char name[20];//课程名称
    float score;//课程分数
}Course;

typedef struct student{
    int number;//学号
    char name[20];//姓名
    Course courses[3];//三门课程
}Student;

float averageScore(Student stu);
float averageScore(Student stu){
    float average = 0;
    for (int i = 0; i < 3; i++) {
        average += stu.courses[i].score;
    }
    return average /= 3;
}

void printPoorStudent(Student stu);//打印两门以上不及格的学生信息
void printPoorStudent(Student stu){
    if ((stu.courses[0].score < 60 && stu.courses[1].score < 60)||(stu.courses[0].score < 60 && stu.courses[2].score < 60)||(stu.courses[1].score < 60 && stu.courses[2].score < 60)) {
        printf("%d\t",stu.number);
        if (stu.courses[0].score < 60) {
            printf("%s:%.2f\t",stu.courses[0].name,stu.courses[0].score);
        }
        if (stu.courses[1].score < 60) {
            printf("%s:%.2f\t",stu.courses[1].name,stu.courses[1].score);
        }
        if (stu.courses[2].score < 60) {
            printf("%s:%.2f\t",stu.courses[2].name,stu.courses[2].score);
        }
        printf("\n");
    }
}

void printNBestStudentInfo(Student stu);//打印牛best学生的信息
void printNBestStudentInfo(Student stu){
    if (averageScore(stu) >= 85 && averageScore(stu) <= 90) {
        printf("number:%d name:%s",stu.number,stu.name);
    }
}


void studentInfo(void);
void studentInfo(void)
{
    Student students[5] = {
        {1,"ZhangSan",{{"YuWen",90},{"ShuXue",88},{"English",85}}},
        {2,"LiSi",{{"YuWen",75},{"ShuXue",93},{"English",60}}},
        {3,"WangWu",{{"YuWen",46},{"ShuXue",59},{"English",52}}},
        {4,"ZhaoDa",{{"YuWen",80},{"ShuXue",55},{"English",2}}},
        {5,"QianEr",{{"YuWen",58},{"ShuXue",35},{"English",86}}},
    };
    Course averages[3] = {{"YuWen",0},{"ShuXue",0},{"English",0}};
    for (int i = 0; i < 5; i++) {//求每门课的平均成绩
        averages[0].score += students[i].courses[0].score;
        averages[1].score += students[i].courses[1].score;
        averages[2].score += students[i].courses[2].score;
    }
    printf("三门课的平均成绩\n");
    for(int i = 0;i < 3;i++){
        printf("%s:%.2f\n",averages[i].name,averages[i].score/=5);
    }
    
    
    
    printf("有两门以上不及格的学生，并输出其学号和不及格课程的成绩\n");
    for (int i = 0; i < 5; i++) {
        printPoorStudent(students[i]);
    }
    
    printf("三门课平均成绩在85-90分的学生，并输出其学号和姓名\n");
    for (int i = 0; i < 5; i++) {
        printNBestStudentInfo(students[i]);
    }
}


3.
typedef struct candidate{
    char candidateName;
    int ticketCount;
}Candidate;

void vote(int totalCount);//模拟投票
void vote(int totalCount){
    
    Candidate candidates[4] = {{'A',0},{'B',0},{'C',0},{'D',0}};
    
    for (int i = 0; i < totalCount; i++) {
        int choosed = arc4random() % 5 + 65;
        switch (choosed) {
            case 'A':
                candidates[0].ticketCount++;
                break;
            case 'B':
                candidates[1].ticketCount++;
                break;
            case 'C':
                candidates[2].ticketCount++;
                break;
            case 'D':
                candidates[3].ticketCount++;
                break;
            default:
                break;
        }
    }
    
    for (int i = 0; i < 4 - 1; i++) {
        for (int j = 0; j < 4 - 1 - i; j++) {
            if (candidates[j].ticketCount < candidates[j+1].ticketCount) {
                Candidate temp = candidates[j];
                candidates[j] = candidates[j+1];
                candidates[j+1] = temp;
            }
        }
    }
    for (int i = 0; i < 4; i++) {
        printf("%c:%d\n",candidates[i].candidateName,candidates[i].ticketCount);
    }
}


4.
typedef struct stu
{
    char name[20];
    int age;
    float score;
}Student;

void sort_by_name(Student arr[], int arr_len)
{
    for (int i = 0; i < arr_len-1; i++) {
        for (int j = 0; j < arr_len-1-i; j++) {
            if (strcmp(arr[j].name, arr[j+1].name)>0) {
                Student temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

void print_stu_info(Student arr[], int arr_len)
{
    for (int i = 0; i < arr_len; i++) {
        printf("%-10s%5d%7.2f\n", arr[i].name, arr[i].age,arr[i].score);
    }
}

int main(void)
{
    Student stus[5] = {{"zhangsan",23, 78.8},
        {"lisi",25,89.0},
        {"rongyan", 43, 67.5},
        {"amumu", 17, 88},
        {"gailun",28,91.5}};
    
    sort_by_name(stus, 5);
    print_stu_info(stus, 5);
    return 0;
}
