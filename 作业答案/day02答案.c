
//1、接受用户从键盘上输入的两个字符，然后输出他们
int main(){
    
    // 定义两个字符变量
    char c1,c2;
    //提示输入
    printf("请输入：\n");
    // 调用scanf函数来进行输入获取
    scanf("%c",&c1);
    // 注意，可以使用在％c前面添加空格的方式来吸收分隔字符。代替getchar()。
    scanf(" %c",&c2);
    // 打印结果
    printf("c1 = %c,c2 = %c\n",c1,c2);
    
    return 0;
}

//2、接受用户从键盘上输入的两个双精度浮点数，然后输出他们
int main(){
    // 定义变量
    double d1,d2;
    // 提示输入
    printf("input two double numbers:\n");
    // 获取输入
    scanf("%lf%lf",&d1,&d2);// 注意double类型的值需要用%lf来占位。
    // 打印结果
    printf("d1 = %lf,d2 = %lf\n",d1,d2);
    
    return 0;
}
//3、接受用户从键盘上输入的两个单精度浮点数，然后输出他们(保留两位小数)
int main(){
    // 定义变量
    float f1,f2;
    // 提示输入
    printf("input two float numbers:\n");
    // 获取输入
    scanf("%f%f",&f1,&f2);// 注意float类型的值需要用%f来占位。
    // 打印结果
    printf("f1 = %.2f,f2 = %.2f\n",f1,f2);
    
    return 0;
}
//4、用户从键盘上输入两个整数，然后输出他们和
int main(){
    // 定义变量
    int num1,num2;
    // 用于存放两个数的和
    int res;
    // 提示输入
    printf("请输入两个整数:\n");
    // 获取输入
    scanf("%d%d",&num1,&num2);
    // 计算求和
    res = num1 + num2;
    // 打印结果
    printf("%d + %d = %d\n",num1,num2,res);
    
    return 0;
    
}
//5、用户从键盘上输入两个整数，然后输出他们差
int main(){
    // 定义变量
    int num1,num2;
    // 提示输入
    printf("请输入两个整数:\n");
    // 获取输入
    scanf("%d%d",&num1,&num2);
    // 打印结果,直接使用表达式的值作为结果输出
    printf("%d - %d = %d\n",num1,num2,num1 - num2);
    
    return 0;
}
//6、用户从键盘上输入两个整数，输出他们的商
int main(){
    // 定义变量
    int num1,num2;
    // 提示输入
    printf("请输入两个整数:\n");
    // 获取输入
    scanf("%d%d",&num1,&num2);
    // 打印结果,直接使用表达式的值作为结果输出
    printf("%d ／ %d = %d\n",num1,num2,num1/num2);
    
    return 0;
}
//7、用户从键盘上输入两个整数，输出他们的余数
int main(){
    // 定义变量
    int num1,num2;
    // 提示输入
    printf("请输入两个整数:\n");
    // 获取输入
    scanf("%d%d",&num1,&num2);
    // 打印结果,直接使用表达式的值作为结果输出
    printf("%d %% %d = %d\n",num1,num2,num1%num2);// 注意，使用printf() 输出％时，需要使用％％来进行表示。
    
    return 0;
}
//9. 用户输入矩形的长和宽,求出矩形的面积和周长,并将结果显示在屏幕上.
//
//面积: 长*宽       周长  （长+宽)*2
int main(){
    // 定义变量
    double length,width;
    // 提示输入
    printf("请依次输入矩形的长和宽:\n");
    // 获取输入
    scanf("%lf%lf",&length,&width);
    // 打印结果,直接使用表达式的值作为结果输出
    printf("矩形的周长 = %.2lf\n",(length+width)*2);
    
    return 0;
}

//10. 要求用户输入圆形的半径,求出圆形的面积和周长,并将结果显示在屏幕上.
//面积:pi*r*r 周长: 2*pi*r  PI的值取3.14
int main(){
    // 定义变量
    double r;
    double pi = 3.14;
    // 提示输入
    printf("请输入半径:\n");
    // 获取输入
    scanf("%lf",&r);
    // 打印结果,直接使用表达式的值作为结果输出
    printf("圆的面积 = %f\n",pi * r * r );
    printf("圆的周长 = %.2lf\n",2 * pi * r );
    /*
     注意：
        float 有效位数：7～8
        double  有效位数：16~17.
        超过有效位数后，会出现不精确的结果。
     */
    return 0;
}

//11. 编程实现计算几天(如46天)是几周零几天. 天数要求用户从控制台输入
//请用户输入1个天数 计算用户输入的天数是几周零几天。
int main(){
    // 定义变量
    // 获取用户输入的天数
    long daysInput;
    // 用于输出的周数
    long weeks;
    // 用于输出的天数
    long daysOutput;
    // 提示输入
    printf("请输入天数:\n");
    // 获取输入
    scanf("%ld",&daysInput);
    // 计算
    // 一周七天，用输入的天数除以7，得出整周数。
    weeks = daysInput / 7;
    // 用天数对7取余，就得出按周除完之后余下的零头天数
    daysOutput = daysInput % 7;
    
    // 打印结果
    printf("您输入的是%ld周%ld天\n",weeks,daysOutput);
    
    return 0;
}

//12. 请用户从控制台输入1个秒数,求用户输入的秒数是几天几小时几分钟几秒?
int main(){
    // 定义变量
    // 获取用户输入的秒数
    long secInput;
    
    // 用于输出的天数
    long days;
    // 用于输出的小时数
    long hours;
    // 用于输出的分钟数
    long mins;
    //用于输出的秒数
    long secOutput;
    
    // 提示输入
    printf("请输入秒数:\n");
    // 获取输入
    scanf("%ld",&secInput);
    
    // 计算
    // 计算输入的秒数包含多少个整天，1day = 24h, 1h = 60min, 1min = 60sec.
    days = secInput / (24*60*60);
    
    // 计算不足一天的秒数中包含多少整个的小时。
    hours = secInput % (24*60*60) / (60*60);
    
    // 计算不足一小时的秒数中包含多少分钟。
    mins = secInput % (60*60) / 60;
    
    //计算不足一分钟的剩余的秒数
    secOutput = secInput % 60;
    
    // 打印结果
    printf("您输入的是%ld天%ld时%ld分%ld秒\n",days ,hours,mins,secOutput);
    
    return 0;
}


