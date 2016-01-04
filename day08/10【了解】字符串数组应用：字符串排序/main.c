//
//  main.c
//  10【了解】字符串数组应用：字符串排序
//
//  Created by 高明辉 on 15/12/31.
//  Copyright © 2015年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    /*
     输入5个国名并按字母顺序排列后输出。
     排序:冒泡排序 选择排序 
     查找:折半查找。
     char *name[]= {"CHINA","AMERICA","AUSTRALIA","FRANCE","GERMAN"};
     排序后的结果：
     
     思路:
     1)排序的规则,按照首字母的ascii码值排序
     2)借助字符串的比较函数 strcmp(str,str2)
     3)怎么排序?(选择、冒泡) 
     566
     */
    
    char *countrys[] = {
        "China",
        "American",
        "Japanese",
        "Korean",
        "Russia",
        "France"
    };
    printf("%ld\n",sizeof(countrys[0])/sizeof(char));
    //要求以字母排序.
    // 求字符数组的长度（素组元素的个数）
    int length =  sizeof(countrys) / sizeof(countrys[0]);
    printf("length = %d\n",length);
    
    for(int i = 0; i < length - 1; i++){
        for(int j = 0; j < length - 1 -i; j++){
            // 比较两个字符串的大小
            int res =  strcmp(countrys[j], countrys[j+1]);
            // 如果前面大于后面，那么交换顺序（冒泡）
            if(res > 0){
                char *temp = countrys[j];
                countrys[j] = countrys[j+1];
                countrys[j+1] = temp;
            }
        }
    }
    
    
    for(int i = 0; i < length; i++){
        printf("%s\n",countrys[i]);
    }
    

    return 0;
}
