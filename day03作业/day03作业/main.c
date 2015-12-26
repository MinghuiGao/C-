//
//  main.c
//  day03作业
//
//  Created by 高明辉 on 15/12/26.
//  Copyright © 2015年 itcast. All rights reserved.
//

/*
 0. 请输入土豪儿子的成绩.
 90以上  奖励保时捷汽车.
 80-89   奖励奔驰汽车
 70-79  奖励东风日产汽车
 60-69  拖拉机.
 30-59  打屁股
 30以下  断绝父子关系.
 
 
 
 1. 请写1个ATM程序.
 定义1个变量,用来存储该ATM机器中剩余的金额.
 接收用户输入取款金额.
 由于ATM机器只支持100的票子.
 如果用户输入的取款金额不是100的倍数的话.则打印 "对不起,本机器无法提供输入的面额"
 如果用户输入的取款金额大于了ATM的剩余金额.则打印 "对不起,余额不足."
 如果用户输入的取款金额是100的倍数,并且小于等于ATM的剩余金额就打印."正在出钞,请从出钞口拿钱.ATM机器剩余xx元"
 
 
 
 
 
 2. 请用户从控制台输入3个整型的数,显示这3个数中的最大数. ****
 
 
 3. 乔布斯买了1框鸡蛋(10个),如果这其中的坏蛋少于5个,他就吃掉.否则就退货.坏蛋的数随机产生.
 产生1个 0-10的随机数. 判断这个随机数的大小。
 
 int num =  arc4random_uniform(11)
 
 4. 要求用户输入两个整型的数a、b. 如果a能被b整除 或者 a加b的结果大于100. 则输出a的值,否则输出b的值.
 
 
 5. 请用户输入1个实数(浮点型),请编写算法对这个实数进行四舍五入到个位的运算.
 例如  12.56经过四舍五入运算得到13. 而12.45经过四舍五入运算得到12
 请自己编写算法. *
 
 double num = 12.56;
 1).先拿到小数的整数部分 12.
 int i1 = num; //12
 2).再拿到小数的小数部分 0.56
 num - i1;
 3）。
 
 
 
 
 
 6. 请用户输入密码,
 如果密码是888888则提示正确,
 否则要求再输入1次,如果第2次输入正确,就提示正确,否则就提示错误.
 
 
 7. 请用户输入年龄,如果大于等于18岁,则告知用户本网站可以查看;
 如果小于10岁, 则告知用户不允许查看.
 如果大于等于10岁并且小于18岁,则再次询问用户是否要继续查看,如果用户的选择是继续查看,就显示给他看,否则就提示"你放弃查看"
 
 提示: 在询问用户是否要查看的时候,可以提示用户输入 y或者n 的字符. y代表yes n代表no
 请问你要继续查看吗? y/n
 接收用户输入y或者n。
 
 
 8. 编写1个程序,请用户输入1个整数,如果输入的整数大于0,则为该数加上100;如果小于0,则加上500;如果等于0,则什么都不做.
 最后,打印这个数据的值.
 
 9. 编写1个程序,请用户输入1个字符数据。***
 如果这个字符是1个小写的字母,则输出"你输入的是1个小写的字母"
 如果这个字符是1个大写的字母,则输出"你输入的是1个大写的字母"
 否则,就提示你输入的不是字母.
 提示: 我们讲过,每1个字符都有1个ASCII码,而字符的ASCII码是有规律的. 可以通过判断字符的ASCII码来判断该字符是1个什么样的字符.
 
 10. 请编写如下程序:
 请用户输入星期数(1-7).打印对应的英文星期天.
 英文星期天 请使用系统自带的词典查询.
 如果用户输入的不是1-7的数,就提示:"你是从火星来的吗?"
 
 
 11.请用户输入1个年份,判断用户输入的年份是否为闰年,如果是闰年就显示"是闰年",否则就显示"不是闰年".
 满足下面两个条件之一的年份就是闰年
 -> 年份能够被400整除.
 -> 年份能够被4整除但是不能被100整除.
 
 12.请用户输入1个年份,再输入1个月份,显示这1年的这1月有多少天.
 提示:
 1、3、5、7、8、10、12月份,无论是那个年份 都有31天.
 4、6、9、11月份,无论是那个年份，都是30天.
 如果是2月份,年份是闰年的话那么就有29天 否则就是28天.
 
 */
#include <stdio.h>


/*
 0. 请输入土豪儿子的成绩.
 90以上  奖励保时捷汽车.
 80-89   奖励奔驰汽车
 70-79  奖励东风日产汽车
 60-69  拖拉机.
 30-59  打屁股
 30以下  断绝父子关系.
 */
void pro0(){
    
    printf("input score:\n");
    
    int score;
    scanf("%d",&score);
    
    if (score >= 90 && score <= 100) {
        printf("奖励保时捷汽车\n");
    }else if(score >= 80 && score <= 89){
        printf("奖励奔驰汽车\n");
    }else if(score >= 70 && score <= 79){
        printf("奖励东风日产汽车\n");
    }else if(score >= 60 && score <= 69){
        printf("拖拉机\n");
    }else if(score >= 30 && score <= 59){
        printf("打屁股\n");
    }else if(score >= 0 && score < 30){
        printf("断绝父子关系");
    }else {
        printf("输入错误！\n");
    }
    
}

/*
 1. 请写1个ATM程序.
 定义1个变量,用来存储该ATM机器中剩余的金额.
 接收用户输入取款金额.
 由于ATM机器只支持100的票子.
 如果用户输入的取款金额不是100的倍数的话.则打印 "对不起,本机器无法提供输入的面额"
 如果用户输入的取款金额大于了ATM的剩余金额.则打印 "对不起,余额不足."
 如果用户输入的取款金额是100的倍数,并且小于等于ATM的剩余金额就打印."正在出钞,请从出钞口拿钱.ATM机器剩余xx元"
 
 */
void pro1(){
    // 账户余额
    float rest = 10000.0f;
    //接收用户输入取款金额
    int money;
    printf("您有%.2f元,请输入要取的钱数：\n",rest);
    scanf("%d",&money);
    if (money > 0 && money % 100 != 0){
        printf("对不起,本机器无法提供输入的面额\n");
    }else if(money > rest){
        printf("对不起,余额不足.\n");
    }else if(money % 100 == 0 && money <= rest){
        printf("正在出钞,请从出钞口拿钱.ATM机器剩余%.2f元\n",rest - money);
    }else{
        printf("输入错误！\n");
    }
    
}

/**
  2. 请用户从控制台输入3个整型的数,显示这3个数中的最大数. ****
 
 */
void pro2(){
    printf("请输入三个整数：\n");
    int num1, num2,num3,max;
    
    scanf("%d%d%d",&num1,&num2,&num3);
    if(num1 > num2){
        max = num1;
    }else{
        max = num2;
    }
    if(max < num3){
        max = num3;
    }
    printf("最大数：%d\n",max);
    
}

/*
 3. 乔布斯买了1框鸡蛋(10个),如果这其中的坏蛋少于5个,他就吃掉.否则就退货.坏蛋的数随机产生.
 产生1个 0-10的随机数. 判断这个随机数的大小。
 
 int num =  arc4random_uniform(11)
 */
#include <stdlib.h>
void pro3(){
    int badEgg;
    badEgg = arc4random_uniform(11);
    
    if(badEgg < 5){
        printf("坏蛋有%d个，吃掉.\n",badEgg);
    }else{
        printf("坏蛋有%d个，退货\n",badEgg);
    }
}

/*
 4. 要求用户输入两个整型的数a、b. 如果a能被b整除 或者 a加b的结果大于100. 则输出a的值,否则输出b的值.
 */
void pro4(){
    int a ,b;
    printf("请输入ab的值：\n");
    scanf("%d%d",&a,&b);
    if(a % b == 0 || a+b > 100){
        printf("a = %d\n",a);
    }else{
        printf("b = %d\n",b);
    }
    
}

/*
 5. 请用户输入1个实数(浮点型),请编写算法对这个实数进行四舍五入到个位的运算.
 例如  12.56经过四舍五入运算得到13. 而12.45经过四舍五入运算得到12
 请自己编写算法. *
 
 double num = 12.56;
 1).先拿到小数的整数部分 12.
 int i1 = num; //12
 2).再拿到小数的小数部分 0.56
 num - i1;
 3）。
 */
void pro5(){
    
}

int main(int argc, const char * argv[]) {
    pro4();
    return 0;
}
