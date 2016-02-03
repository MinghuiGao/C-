//
//  main.m
//  16-【理解】NSDictionary的介绍及使用
//
//  Created by 高明辉 on 16/2/1.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSDictionary 的介绍和使用
 
    1、NSDictionary：字典，－》 根据一个key可以找出对应的值（value）
        NSDictonary 一旦创建好了之后，其内容是不可改变的。
        注意：以％@打印的时候，字典是以{}来包括其内容的。NSArray 是以()。
    2、创建一个NSDictionary
        字典中的key和value 只要是对象，就可以。
         + (instancetype)dictionary;
         + (instancetype)dictionaryWithObject:(id)object forKey:(id <NSCopying>)key; // objectForKey,根据键取值。
         + (instancetype)dictionaryWithObjectsAndKeys:(id)firstObject, ...;
    3、快速创建字典
        回顾：快速创建数组的：
            NSArray *array = @[@"one ",@"two"];
        快速创建字典；
            NSDictionary *ditc = @{@"key":@"value",@"key2":@"value"};
    4、NSDictionary的几本使用
        获取字典中键值对的数目 
        根据key获取value；
    5、NSDictionary遍历方法
        1、快速遍历
        2、通过block遍历
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = [NSDictionary dictionary];
        NSLog(@"dict = %@",dict);
        NSArray *arr = @[@"one",@"two",@"three"];
        dict = [NSDictionary dictionaryWithObject:@"fengjie" forKey:@"fj"];
        
        dict = [NSDictionary dictionaryWithObject:arr forKey:@"arr"];
        
        NSLog(@"dict = %@",dict);
        /*
         key    value.
         fj = fengjie;
         */
        // 创建字典的时候存放多个值
        dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"fengjie",@"fj",
            @"furong",@"fr",
            @"pangguang",@"pg",
        nil];
        NSLog(@"dict  = %@",dict);
        
        // 快速创建一个字典。
        NSDictionary *dict2 = @{@"key":@"value",@"key2":@"value"};
        NSLog(@"dict = %@",dict2);
        
        // 获取数目
        NSUInteger count = [dict2 count];
        NSLog(@"count  = %lu",count);
        // 根据key值获取value
        id id = [dict2 valueForKey:@"key2"];
        NSLog(@"%@",id);
        NSString *value = [dict valueForKey:@"fj"];
        NSLog(@"value = %@",value);
        
        NSString *value2 = dict[@"fj"];// 相当于把下标换成了key。
        NSLog(@"value2 = %@",value2);
        
        
        // 快速遍历
        for (NSString *key in dict2) {
//            NSLog(@"str= %@",str); 得到的是dict2的key，
            // 根绝key值来访问value的值
            
//            NSString *value = [dict2 valueForKey:key];
//            NSLog(@"%@ = %@",key,value);
//            
            NSLog(@"%@ = %@",key,dict2[key]);
        }
        
        NSLog(@"------------");
        // 使用block遍历
        NSDictionary<NSString *,NSObject *> *dict3 = [NSDictionary dictionaryWithObjectsAndKeys:@"value0",@"key0",@"valueOne",@"key1",@"valueTwo",@"key2",@"valueThree",@"key3", nil];
        
        [dict3 enumerateKeysAndObjectsUsingBlock:^(NSString * _Nonnull key, NSObject * _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"%@ --- > %@",key,obj);
        }];
        
    }
    return 0;
}
