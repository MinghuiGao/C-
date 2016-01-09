//
//  main.m
//  12【掌握】NSString 类介绍及用法
//
//  Created by 高明辉 on 16/1/9.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSString类的介绍及用法
    NSString 去掉前缀NS就是字符串的意思，所以在OC中，就代表字符串类，是一个类类型。
    在C语言中用来操作字符串的类类型之一，其它的还有NSMutableString等。
    用法：
        1、创建一个字符串常量
            使用“@”符号.和C语言中的字符串常量不同。
        2、创建一个空字符串。
            使用［NSString new］，像创建一个对象一样。
        3、创建格式化字符串，
            使用特定的格式来创建字符串。
            通过在格式控制字符串中使用占位符（％＋字符）来达到生成特定格式的字符串的目的。
        常见的格式控制符：
            int -> %d
            float -> %f
            double -> %lf
            long -> %ld
            char -> %c.
            char[]或C语言中的字符串 “string” -> %s
            OC中的字符串 -> %@
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 创建字符串常量
        NSString *str = @"字符串常量";
        //  注意，这是的字符串存储的空间在常量区。相当于一个NSString类型的指针指向常量区的一个常量字符串。
        
        
        
        // NSString是一个类，前面用到的Person类来创建对象的时候，是调用了new方法。那么NSString可以用new来创建吗？可以。
        NSString *str2 = [NSString new];// 注意，这是创建了一个空的字符串。字符串存储在堆区。
        str2 = str;// 创建完了之后，再赋值是可以的。
        NSLog(@"str2 = %@",str2);
//        NSLog(str2);// 可以打印出来，但是报警告。
        
        
        
        // 可以通过％＋符号来做占位符打印变量的值，我们也可以通过这种方式来创建字符串。
        NSString *fileName = [NSString stringWithFormat:@"文件名:image01.jpg"];
        NSLog(@"%@",fileName);
        NSLog(@"---------------------");
        //如果iamge01。jpg的01是变动的，那么，我们就需要用到变量了，这里就可以用到占位符。
        for (int i = 1; i <= 10;i++) {
            // 打印iamge01.jpg - image10.jpg.
            NSLog(@"文件名：%@",[NSString stringWithFormat:@"image%02d.jpf",i]);
        }
        
    }
    return 0;
}
