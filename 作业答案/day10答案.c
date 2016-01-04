一．选择题答案
1.A
2.B
3.B
4.B
5.D
6.B
7.D
8.D
9.A
10.A
11.B
12.D
13.C
14.A
15.B
16.C
17.C
18.B
19.C
20.B

二．填空题答案
1．	7
2．	1000，10
3．	【1】 c
4．	【1】 #define PI 3.1415926 【2】 &r                   【3】 PI*r*r*r
5．	【1】 CIRCLE(R,L,S,V)  【2】 S=PI*R*R;V=PI*R*R*R*4/3  【3】 r,l,s,v


三、编程题
1.
#define MAX_VALUE(A,B,C) (A>B?A:B)>C?(A>B?A:B):C
2.
#define SWAP_ODD_EVEN(NUM) ((NUM&0X55555555)<<1)|((NUM&0Xaaaaaaaa)>>1)
3.
//定义一个带参数的宏
#define SWAP(a,b) {int c; c = a; a = b; b = c;}

int main(int argc, const char * argv[])
{
    int a[] = {1, 3, 5};
    int b[] = {2, 5, 8};
    for (int i = 0; i < sizeof(a)/sizeof(int); i++) {
        //        交互值
        SWAP(a[i], b[i]);
    }
    //    输出结果
    for (int i = 0; i < sizeof(a)/sizeof(int); i++) {
        printf("a[%d] = %d\n", i, a[i]);
    }
    for (int i = 0; i < sizeof(a)/sizeof(int); i++) {
        printf("b[%d] = %d\n", i, b[i]);
    }
    return 0;
}

4.
//定义宏
#define PI 3.14
#define AREA(r) PI*(r)*(r)

int main(int argc, const char * argv[])
{
    float r;
    printf("请输入半径\n");
    scanf("%f",&r);
    printf("面积 ＝ %.2f\n", AREA(r));
    return 0;
}

5.
//定义宏
#define TRUE 1
#define FALSE 0
#define EVEN(x) (((x)%2) == 0)?TRUE:FALSE

int main(int argc, const char * argv[])
{
    int sum = 0;
    for (int i = 1; i <= 100; i++) {
        if (EVEN(i)) {
            //            累加思想
            sum += i;
        }
    }
    printf("sum = %d\n", sum);
    return 0;
}

6.
//定义宏
#define INTEGER(n) printf("%d\n", n)

int main(int argc, const char * argv[])
{
    int sum = 10;
    INTEGER(sum);
    return 0;
}

7.
//定义宏
#define PWD 1

int main(int argc, const char * argv[])
{
    //    密码
    char *s = "password";
    //    更加宏输出对应格式
#if PWD
    printf("******");
#else
    printf("%s", s);
#endif
    return 0;
}

