//
//  main.c
//  9【理解】字符串处理函数（二）
//
//  Created by 高明辉 on 16/2/5.
//  Copyright © 2016年 itcast. All rights reserved.
//

#include <stdio.h>
#include <string.h>
/*
 字符串处理函数2
    1、strcpy，字符串拷贝函数
        格式：
            strcpy(字符数组1，字符数组2）
        功能：
            把字符数组2 的内容拷贝到字符数组1 中。’\0‘也一起拷贝。
            字符数组2，可以是一个字符串常量。
            返回的是，字符数组1的首地址。
        注意：
            str1 的长度要能够存放str2的内容，否则会报错。
    2、strcmp，字符串比较函数
        功能: 按照ASCII码的顺序来比较两个数组中的字符串。并且返回比较结果。
        格式：
            strcmp(str1,str2)
        
        str1 < str2 : 返回值 < 0
        str1 > str2 : 返回值 > 0
        str1 == str2: 返回 0 。
            a(97) < b(98)
            a == a
    3、获取字符串长度的函数
        格式：
            strlen(数组名）
        作用：
            返回字符串中，字符的个数。
        注意：
            计算个数的字符中不包含'\0'.
 
 */
int countWords(char str[]);

int main(int argc, const char * argv[]) {
    
    /*
     思考&实现1:
     使用gets()函数从键盘输入一个字符串,判断输入的有多少个单词?
     
     abc sadfasdf asdfasdfasdf asdfasdf
     
     提示:
     if(arr[i]==' '){
     words=0;
     }else if(words==0){
     num++;
     words=1;
     }
     
     思考&实现2:
     输入三个英文名，并按字母的升序排列。
     */
    
    // gets()函数能够接受空格
    char str[100];
    gets(str);
    
    countWords(str);
    return 0;
}

/*
 数单词的个数。
 */
int countWords(char str[]){
    
    /*
    判断有多少个单词，主要是要看有多少个空格,使用下标去判断每个字符的内容，如果是空格，单词个数就＋1
    分析输入：
        1、直接输入会车
        2、敲若干个空格后会车
        3、正常输入
     
     
     */
    // 记录单词个数 开始就有一个
    int wordCount = 1;
    // 索引
    int i = 0;
    
    while (str[i] != '\0') {
        if (str[i] == ' ') { // 当遇到空格的时候，单词个数＋1
            wordCount++;
        }
        i++;
    }
    printf("wordCount = %d\n",wordCount);
    return wordCount;
}

/*
 获取字符串的长度
 
 */
void test3(){
    char str[] = "hello";
    char str2[10] = "hello";
    char str3[10] = {'h','e','l','l','o','\0'};// 这种方式必须要手动添加\0。
    
    printf("str: %lu,str2: %lu,str3: %lu\n",strlen(str),strlen(str2),strlen(str3));
}

/*
 比较字符串
 */
void tes2(){
    
    char str1[] = "bbc";
    char str2[] = "abc";
    int res = strcmp(str1, str2);
    printf("res = %d\n",res);
}


/*
 拷贝字符串
 */
void test1(){
    char str1[10];
    char str2[] = "hello world!";
    char * res = strcpy(str1, str2);
    printf("res = %s\n",res);
}
