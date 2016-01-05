//
//  main.c
//  day12
//
//  Created by 高明辉 on 16/1/4.
//  Copyright © 2016年 itcast. All rights reserved.
//

/**
 1、引入头文件
 2、进行必要的宏定义
 3、定义文件名称变量、联系人数组、联系人结构体
 4、定义函数，并进行函数声明
 5、编写循环控制程序
 6、显示操作界面
 7、根据编号执行不同的函数
  */

#include <stdio.h>
#include <string.h>
// ＊＊＊＊＊＊＊1进行宏定义＊＊＊＊＊＊＊
// 定义通讯录的容量
#define N 100
// 定义姓名长度
#define NAME_LEN 22
// 定义好吗的长度
#define NUM_LEN 12


// ＊＊＊＊＊＊2定义结构体和全局变量＊＊＊＊＊＊＊
typedef struct{
    // 联系人姓名
    char name[NAME_LEN];
    // 电话号码
    char telNum[NUM_LEN];
} Person;

// 定义一个数组存放联系人
Person contacts[N];
// 定义联系人总数
int totalContactCount = 0;
// 数据保存的文件路径
char *filePath = "/Users/gaominghui/Desktop/C-/day12/day12/telBook.data";

// ＊＊＊＊＊＊3函数声明＊＊＊＊＊＊＊
int validateInput(int num,int min ,int max);
void init();
void doAdd();
void doDelete();
void doUpdate();
void doShowList();
void doSearchByName();
void writeFile();




int main(int argc, const char * argv[]) {
    // 运行程序，初始化，并展示选择界面
    init();
    int flag = 1;
    while (flag) {
        // 显示界面
        printf("**************************\n");
        printf("****** 欢迎使用通讯录 ******\n");
        printf("****** 1、添加联系人  ******\n");
        printf("****** 2、删除联系人  ******\n");
        printf("****** 3、修改联系人  ******\n");
        printf("****** 4、查看所有联系人 ****\n");
        printf("****** 5、搜索联系人  ******\n");
        printf("****** 6、退出系统    ******\n");
        printf("**************************\n\n");
        // 提示用户输入
        printf("请选择1-6之间的功能编号:\n");
        char selectNum = -1;
        
        scanf(" %c",&selectNum);
//        validateInput(selectNum, 1, 6);
        
        switch (selectNum) {
            case '1':
                //执行添加
                doAdd();
                break;
            case '2':
                //执行删除
                doDelete();
                break;
            case '3':
                //执行修改
                doUpdate();
                break;
            case '4':
                //执行显示所有联系人
                doShowList();
                break;
            case '5':
                //执行查找
                doSearchByName();
                break;
            case '6':
                //退出系统
                flag = 0;
                break;
            default:
                printf("您输入的有误，请重新输入！\n");
                break;

        }
        
    }
    // 退出系统
    printf("系统正在退出...\n");
    printf("系统已经退出!\n");
    return 0;
}

/**
 *  搜索联系人
     思路；
     1、提示用户输入要搜索的联系人姓名
     2、按照姓名进行查找（遍历）
     
     1）输入的姓名和contacts[i].name 比较
     2）搜索不到
     遍历一遍 都没有这个名称 提示查找不到
 
 */
void doSearchByName(){
    printf("您选择的是搜索联系人，按提示操作:\n");
    
    char searchName[NUM_LEN];
    printf("请输入要查找的联系人的姓名： \n");
    scanf("%s",searchName);
    
    // 遍历contacts数组，比较名字
    for (int i = 0; i < totalContactCount; i++) {
        // 比较两个字符串是否相等 使用strcmp函数，如果结果为0，那么 相等。
        if (strcmp(contacts[i].name,searchName) == 0){
            // 两个名字想等
            // 打印出信息
            printf("%d\t %s\t %s\t \n",i+1,contacts[i].name,contacts[i].telNum);
        }
    }
}

/**
 *  删除联系人
     思路：
     1、提示用户输入一个联系人编号
     2、判断编号是否合法 编号不能大于联系人个数
     3、提示用户再次确认删除
     4、开始删除数组元素
     1）删除的元素正好是数组的最后一个元素
     只需要让联系人个数-1
     
     2）如果删除的元素不是数组的最后一个元素
     需要移动元素
     联系人数量-1
     
     5、同步更新到文件中
 
 
 */
void doDelete(){
    printf("您选择的是删除联系人，请按提示操作:\n");
    // 1 显示列表
    doShowList();
    // 2 选择要删除的编号
    int no;
    printf("请输入要删除的联系人的编号：\n");
    scanf("%d",&no);
    // 3 校验输入
    if(validateInput(no, 1, totalContactCount)){
        return ;
    }
    // 4 如果合理，提示用户再次确认
    int flag;
    printf("删除联系人后，数据将无法恢复，您缺人要删除吗？1.确认  0.取消\n");
    scanf("%d",&flag);
    if (flag) {

        // 5 开始删除数组元素
        if (no == totalContactCount) {
            // 如果是最后一个元素，计数－1即可
            totalContactCount--;
        }else{
            // 否则，删除元素，并且后面的元素依次向前移动
            for (int i = no; i < totalContactCount; i++) {
                //元素的移动和覆盖
                // 1 3   7 9
                // 0 1 2 3 4
                // 1 2 3 4 5
                contacts[no-1] = contacts[no];
            }
            
            //   联系人数量-1
            totalContactCount --;
        }
        //5、同步更新到文件中
        writeFile();
        
    }
}


/**
 *  修改联系人
     思路：
     1、提示用户输入修改的信息编号
     2、验证编号是否合法
     3、输入新的用户名和新的电话号码
     4、让用户再次确认修改
     5、更新数组信息
     6、写入到文件中
 */
void doUpdate(){
    printf("您选择的是修改联系人，请按提示操作:\n");
    doShowList();
    
    int no;
    printf("请选择要更新的序号:\n");
    scanf("%d",&no);
    
    if(validateInput(no, 1, totalContactCount)){
        return;
    }
    // 校验成功, 让用户输入新的用户名和点哈号码
    char newName[NAME_LEN];
    char newTelNum[NUM_LEN];
    printf("请输入新的用户名:(*注意联系人姓名中间不能有空格) \n");
    scanf("%s",newName);
    
    printf("请输入联系人新的电话：(*注意联系人电话中间不能有空格)\n");
    scanf("%s",newTelNum);
    
    // 让用户确认修改
    int flag ;
    printf("确认后，信息将永久修改，您确认修改吗？1.确认   0.取消\n");
    scanf("%d",&flag);
    
    if (flag) {
        // 更新数组的no－1个元素的内容
        strcpy(contacts[no-1].name,newName);
        strcpy(contacts[no-1].telNum, newTelNum);
        // 保存内容
        writeFile();
        
    }
    
}


/**
 *  显示所有联系人
 思路：
 前提：系统已经完成了初始化工作（如果文件存在则读取文件中的所有的数据）
 1、首先做一个判断
 totalContactCount == 0   //表示没有联系人
 
 2、如果不等于0
 
 开始遍历，并且输出联系人的信息
 
 */
void doShowList(){
    printf("显示所有联系人，联系人数据如下:\n");
    
    // 判断是否为空
    if(totalContactCount == 0){
        printf("您还没有添加~\n");
    }else{
        //输出格式
        printf("编号\t 姓名\t 电话\t \n");
        // 遍历数组
        for (int i = 0;  i < totalContactCount;i++) {
            printf("%d\t %s\t %s\t \n",i+1,contacts[i].name,contacts[i].telNum);
        }
    }
    
}


/**
 *  添加联系人
     思路：
     1、提示用户输入联系人姓名
     2、接收联系人
     3、提示用户输入电话号码
     4、接收电话号码
     5、确认添加
     6、联系人的个数+1
     7、把联系人信息写入到文件中
 */
void doAdd(){
    printf("您选择的是添加联系人，请按提示操作:\n");
    //1 提示用户输入联系人姓名
    printf("请输入联系人姓名：(*注意联系人姓名中间不能有空格)\n");
    // 2 接收联系人
    // totalContactCount : 联系人数组的最后一个元素
    scanf("%s",contacts[totalContactCount].name);
    // 3 提示输入号码
    printf("请输入联系人电话：(*注意联系人电话号码中间不能有空格)\n");
    // 4 接收号码的输入
    scanf("%s",contacts[totalContactCount].telNum);
    // 5 确认
    int flag = 0;
    printf("您确认要添加数据吗？1.确认  0.取消\n");
    scanf("%d",&flag);
    
    if (flag) {
        // 6 联系人个数＋＋
        totalContactCount++;
        // 7 保存联系人数据 ，写入数据文件
        writeFile();
    }
    
}
/**
 *  写数据到文件中
 思路：
 1、以wb方式打开文件
 2、先写联系人个数
 3、写每个联系人数据
 */
void writeFile(){
    // 1 打开文件
    FILE *fp = fopen(filePath, "wb");
    if(fp != NULL){
        // 写联系人个数
        fwrite(&totalContactCount, sizeof(totalContactCount), 1, fp);
        
        // 写联系人数据
        for (int i = 0; i < totalContactCount; i++) {
            fwrite(&contacts[i], sizeof(Person), 1, fp);
        }
        printf("联系人写入成功!\n");
    }
    
    // 关闭文件指针
    fclose(fp);
    
}


void init(){
    // 定义文件指针，打开文件
    FILE *fp = fopen(filePath, "r");
    if(fp != NULL){
        // 1 读取联系人个数
        fread(&totalContactCount, sizeof(totalContactCount), 1, fp);
        // 2 读取每一个联系人
        for (int i = 0; i < totalContactCount; i++) {
            // 依次读取联系人到每个数组元素
            fread(&contacts[i], sizeof(Person), 1, fp);
        }
        
    }else{
        // 文件不存在，创建文件
        fp = fopen(filePath,"wb");
        // 写入联系人个的个数
        fwrite(&totalContactCount, sizeof(totalContactCount), 1, fp);
        printf("通讯录文件创建成功！\n");
    }
    // 关闭文件
    fclose(fp);
    printf("初始化完成!\n");
}



/**
 *  验证输入是否合法
 *
 *  @param num 待验证的数
 *  @param min 最小值
 *  @param max 最大值
 *
 *  @return 1 非法， 0 正常
 */
int validateInput(int num,int min ,int max){
    if (num<min || num > max) {
        printf("非法的输入！");
        return 1;
    }
    
    return 0;
}
