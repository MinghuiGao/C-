一、选择题
1．D
解析：不可以直接将一个整形数赋值给一个指针变量
2．D
解析：int a = 511 ,*b = &a;相当于
    int a = 511;
    int *b = &a;
    所以b中存放是a的地址，*b就是变量a的值
3．B
解析：不可以直接将一个整形数赋值给一个指针变量
4．B
5．A
解析：指针变量d存放的就是变量c的地址
6．D
7．D
解析 &是取地址操作，*是访问地址所指向的存储区域，&与*是一对反操作，也就是*& 或 &*相当于什么都没有写
8．B
解析：A 把一个数值直接赋值给了一个指针变量
     C 使用指针的时候，没有对指针进行初始化，它使一个野指针
     D 1、不可以给一个野指针进行赋值，2、不可给一个存放double的存储区域赋值放一个地址
     B 对指针p进行初始化，赋值为x的地址，是正确的
9．D
10．C
11．B
12．A、C
解析：数组名就是数组的地址
13．C
14．C
解析： \017 表示一个八进制的ASCII码对应的字符，只要在ASCII的范围内都是表示一个字符，超过该范围，你可以自己进行验证
      \x11 表示一个十六进制的ASCII码对应的字符

15．C
16．A
17．A
18．C
19．D
20．C
21．C
22．D
23．C
24．C
25．C
26．C
27．B
28．D
29．B
30．D
31．【1】C
32．【1】C
33．【1】C
34．【1】A
35．【1】A
36．
【1】B
【2】C
【2】A
【2】C
【2】C
【2】C
【2】C

37．C
38．C
39．D
40．D
41．B
42．B
43．A
解析：因为p、q指向同一块地址，所以后面输入的字符串会覆盖前面输入的字符串。
44．D
解析：在函数不可以改变main函数指针变量的变量的指向，因为指针变量本身还是值传递，只有在函数访问变量所指向的存储空间的时候才是地址传递，此时才可以改变另外的函数中变量的值。
45．A
46．C
47．D
48．B
49．B
解析：argc 后面的参数列表的长度， argv[0]是文件名的字符串的首地址，argv[1] 是第一个参数的字符串的首地址，argv[2]是第二个参数的字符串的首地址；依次类推
50．B

二、填空题
1． 设有定义：int a, *p=&a; 以下语句将利用指针变量p读写变量a中的内容，请将语句补充完整。
scanf("%d", p );
printf("%d\n", *p);


2． 以下程序的运行结果是________。
#include "stdio.h"
#include "string.h"
//此处定义一个全局变量，它的作用域是从这一行开始的整个文件
//定义在函数外部的变量是全局变量
int *p;
main()
{
    int x=1, y=2, z=3;
    p=&y;//将y的地址赋值给全局变量p
    fun(x+z, &y);
    printf("(1) %d  %d  %d\n", x, y, *p);
    //输出  1,6,6
}
fun( int x, int *y)
{
    int z=4;
    *p=*y+z;
    x=*p-z;
    printf("(2) %d   %d   %d\n", x, *y, *p);
    //输出 2,6,6
}
3． 下面程序段是把从终端读入的一行字符作为字符串放在字符数组中，然后输出。请填空。
#include "stdio.h"
#include "string.h"
main()
{
    int m;
    char s[80], *t;
    for (m=0; m<79; m++)
    {
        s[m]=getchar();
        if (s[m]=='\n')  break;
    }
    s[m]= '\0';//位字符串添加结尾标示
    t= s;//将字符数组的首地址赋值给指针t
    while (*t) putchar(*t++);
}
5． 下面程序段的运行结果是_eXAMPLE_。
char s[80], *t="EXAMPLE";
t=strcpy(s, t); //把字符串t拷贝到字符数组s中，此时字符数组中的字符是 EXAMPLE\0,同时把指针t的指向改为数组s的首地址
s[0]='e'; //把字符数组的第一个元素赋值为'e',字符数组中的字符为eXAMPLE\0
puts(t);//输出t所指向的字符串，也就是字符数组s中存放的字符串
6． 函数sstrcmp()的功能是对两个字符串进行比较。当s所指字符串相等时，返回值为0；当s所指字符串大于t所指字符串时，返回值大于0；当s所指字符串小于t所指字符串时，返回值小于0（功能等同于库函数strcmp()）。请填空。
#include "stdio.h"
int  sstrcmp( char *s, char *t)
{
    while (*s && *t && *s== *t)
    {
        s++;
        t++;
    }
    return *s - *t;
}
7． 下面程序的运行结果是________。
void swap(int *a, int *b)
{
    int *t;
    t=a;
    a=b;
    b=t;
}
main()
{
    int x=3, y=5, *p=&x, *q=&y;
    swap(p,q);
    printf("%d  %d\n", *p, *q);
//  输出 3 5
}
8． 以下程序的输出结果是__空___。
#include "stdio.h"
main()
{
    char *p="abcdefgh", *r;
    long *q;
    q=(long *) p;
    q++;//由于long是占8个字节，q++,指针会向后移动8个字节此时q指在\0的位置
    r=(char *) q;//此时r也指向\0所在位置
    printf("%s\n", r);//此处输出的空
}
9． 下面程序的功能是将字符串中的数字字符删除后输出。请填空。
#include "stdio.h"
#include "malloc.h"
void delnum( char *t)
{
    int m, n;
    for (m=0,n=0; t[m]!='\0';m++)
        //只要不是数字，就是将n++,同时把m位置上的字符放到n的位置上，如果是数字，只有m++,n会保存原来的位置上，这样循环一遍，所有出现数字的位置都会被后面的字符覆盖
        if (t[m]<'0' || t[m]>'9')
        {
//        把m的位置上的字符给n位置上的字符
          t[n]=t[m];
//        把n向后移动一个位置
          n++;
        }
    
    t[n] = '\0';//因为for在字符串的结尾的位置就停止了，所以要把字符末尾加上字符串的结尾标志
}
main()
{
    char *s;
    s=(char *) malloc (sizeof(char) * 100);
    /*在堆内存中开辟100个字节存储空间，然后将空间的首地址赋值给指针变量s*/
    printf("\n input the original string:");
//  gets是读取一个字符串
    gets(s);
//  调用函数删除字符串中的所有数字
    delnum(s);
//  输出字符串
    puts(s);
}
10．下面程序的功能是比较两个字符串是否相等，若相等则返回1，否则返回0。请填空。
#include "stdio.h"
#include "string.h"
int fun (char *s, char *t)
{
    int m=0;
//  如果已经走到字符串的s的结尾了，那么循环就应该结束了
    while (*(s+m)==*(t+m) && *(s+m) != '\0')
        m++;
//  如果是因为走到字符串s末尾结束，
//  说明条件*(s+m)==*(t+m) && *(t+m) == '\0') 成立说明while是因为*(s+m) == '\0' 而停止的，所有可判定s 与 t 是相等的，否则说明s与t不相等
    return  (*(s+m) == '\0') && (*(t+m) == '\0');
}
11．下面程序用来计算一个英文句子中最长单词的长度（字母个数）max。假设该英文句子中只含有字母和空格，在空格之间连续的字母串称为单词，句子以'.'为结束。请填空。
#include "stdio.h"
main()
{
    static char s[]={" you make me happy when days are grey."}, *t;
    int max=0, length=0;
    t=s;
    while (*t!='.')
    {
        while (((*t<='Z')&&(*t>='A'))||((*t<='z')&&(*t>='a')))
        {
            length++;
            t++;
            //把指针t向后移动
        }
        if (max<length)
            max = length;
        length=0;
        t++;
    }
    printf("max=%d", max);
}
12．下面程序是判断输入的字符串是否是“回文”，（顺读和倒读都一样的字符串称为“回文”，如level）。请填空。
#include "stdio.h"
#include "string.h"
main()
{
    char s[80], *t1, *t2;
    int m;
    gets(s);
    m=strlen(s);
    t1=s;
    t2 = s + m - 1;
    while(t1<t2)
    {  if (*t1!=*t2){
             break;
       }else {
           t1++;
           t2--;
       }
    }
    if (t1<t2) printf("NO\n");
    else printf("YES\n");
}
13．当运行以下程序时，从键盘输入：apple↙
tample↙
则下面程序的运行结果是____ample____。
#include "stdio.h"
main()
{
    char s[80], *t;
    t=s;
    gets(t);
    while (*(++t)!='\0')
        if (*t=='a') break;
        else { t++;  gets(t); }
    puts(t);
}
14．当运行以下程序时，从键盘输入6↙，则下面程序的运行结果是___976531_____。
#include "stdio.h"
#include "string.h"
main()
{
    char s[]="97531", c;
    c=getchar();
    f(s,c);
    puts(s);
}
f(char *t, char ch)
{
    while(*(t++)!='\0');
    while(*(t-1)<ch)
        *(t--)=*(t-1);
    *(t--)=ch;
}
15．若有定义：int a[]={1,2,3,4,5,6,7,8,9,10,11,12}, *p[3], m; 则下面程序段的输出是____11____。
for ( m=0; m<3; m++) p[m]=&a[m*4];
printf("%d\n", p[2][2]);
16．下面程序的运行结果是__1, 2__。
#include "stdio.h"
main()
{
    char s[]="1357", *t;
    t=s;
    printf("%c, %c\n", *t, ++*t);
}
17．以下程序将数组a中的数据按逆序存放。请填空。
#include "stdio.h"
#define M 10
main()
{
    int a[M], m, n, temp;
    for( m=0; m<M; m++) scanf ("%d", a+m);
    m=0;
    n=M-1;
    while(m<n)
    {
        temp=*(a+m);
        *(a+m) = *(a+n);
        *(a+n)=temp;
        m++;
        n--;}
    for (m=0;m<M;m++) printf("%3d", *(a+m));
}
18．以下程序在a数组中查找与x值相同的元素的所在位置。请填空。
#include "stdio.h"
main()
{
    int a[11], x, m;
    printf("please input ten numbers:\n");
    for(m=1;m<11;m++) scanf("%d", a+m);
    printf("please input x:");
    scanf("%d", &x);
    *a= x;
    m=10;
    while (x!=*(a+m))
        m--;
    if (m>0) printf("%5d's position is : %4d\n", x, m);
    else printf("%d not been found!\n", x);
}
19．以下程序的功能是__打印出字符指针数组s中的字符串______。
#include "stdio.h"
main()
{
    char * s[]={ "PASCAL", "FORTRAN", "COBOL", "BASIC"};
    char **p;
    int n;
    p=s;
    for (n=0;n<4;n++)
        printf("%s\n", *(p++));
}
20．若有定义和语句：int a[4]={1,2,3,4},*p; p=&a[2]; ，则*--p的值是____2____。
21．若有定义和语句：int a[2][3]={0}, (*p)[3];  p=a;，则p+1表示数组__a[1]__。
22．若有如下定义和语句：
int *p[3], a[6], n;
for (int m=0;m<3;m++) p[m]=&a[2*m];
则*p[0]引用的是a数组元素a[0]；*(p[1]+1)引用的是a数组元素
  a[3]。
23．若有以下定义和语句，在程序中引用数组元素a[m]的四种形式是：*(a + m)、p[m]、*(p + m)和a[m]。（假设m 已正确说明并赋值）
int a[10], *p;
p=a;
24．下面程序的输出结果是________。
//   1   3   5   7   9  11
#include "stdio.h"
main()
{
    int b[2][3]={1,3,5,7,9,11};
    int *a[2][3];
    int i,j;
    int **p, m;
    for(i=0;i<2;i++)
        for(j=0;j<3;j++)
            a[i][j]=*(b+i)+j;
    p=a[0];
    for(m=0;m<6;m++)
    {
        printf("%4d", **p);
        p++;
    }
}
25．定义语句int *f();和int (*f)();的含义分别为
   声明一个返回值类型为 int * ,没有形参的函数
   和
   定义一个函数指针，这个函数指针指向返回值类型为int，且没有参数的函数。
26．请根据运行结果，完成main函数中的填空。
Array_add( int a[], int n)
{
    int m, sum=0;
    for (m=0;m<n;m++)  sum+=a[m];
    return (sum);
}
main()
{
    int Array_add(int a[], int n);
    static int a[3][4]={2,4,6,8,10,12,14,16,18,20,22,24};
    int *p, total1, total2;
    int (*pt)(int[],int);//[1]
    pt=Array_add;
    p=a[0];
    total1=Array_add(p,12);
    total2=(*pt)(p,12);//[2]
    printf("total1=%d\ntotal2=%d\n", total1,total2);
}
运行结果：total1=156
total2=156


1、自己实现strcpy函数(有以下两种实现方法)
void my_strcpy(char dest[], char source[])
{
    int i = 0;
    while (source[i] != '\0') {
        dest[i]= source[i];
        i++;
    }
    dest[i] = '\0';
}

void my_strcpy(char dest[], char source[])
{
    int i = 0;
    do {
        dest[i]= source[i];
        i++;
    }while (source[i] != '\0');
}

2、自己实现strlen函数

int my_strlen(char str[])
{
    int len = 0;
    while (str[len]!='\0') {
        len++;
    }
    return len;
}


#include <string.h>

void inverted_print(char str[])
{
    int index = 0;
    char strings[3][20] = {0};
    int row = 0;
    int col = 0;
    do {
        if (str[index] != ' ') {
            strings[row][col] = str[index];
            col++;
        }
        else
        {
            row++;
            col = 0;
        }
        index++;
    }while (str[index]);
    for (int i = 2; i >= 0; i--) {
        printf("%s ", strings[i]);
    }
}

int main()
{
    char str[20] ="tom is cat";
    inverted_print(str);
    return 0;
}

