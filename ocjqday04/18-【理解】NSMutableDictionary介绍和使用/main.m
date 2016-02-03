//
//  main.m
//  18-【理解】NSMutableDictionary介绍和使用
//
//  Created by 高明辉 on 16/2/1.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSMutableDictionary的介绍和使用
    1、什么是NSMutableDictionary？就是一个可以编辑的NSDictionary。
    2、创建一个NSMutableDictionary
    
    3、常用的方法
        - (void)setObject:(id)anObject forKey:(id <NSCopying>)aKey;
    添加一个键值对(会把aKey之前对应的值给替换掉)
 
        - (void)removeObjectForKey:(id)aKey;
     通过aKey删除对应的value
 
        - (void)removeAllObjects;
     删除所有的键值对
 
    4、NSMutableDictionary简写形式
         和NSDictionary相同。
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *mDict = [NSMutableDictionary dictionary];

        [mDict addEntriesFromDictionary:@{@"fr":@"furong",@"swk":@"monkeysun",@"fj":@"fengjie"}];
        
        NSLog(@"mDict = %@",mDict);
      
        
        [mDict setObject:@"stupid big yellow king" forKey:@"yhdd"];
        NSLog(@"mDict = %@",mDict);
        [mDict setObject:@"phousewarm" forKey:@"swk"];
        NSLog(@"mDict[swk] = %@",mDict[@"swk"]);
        NSLog(@"mDict[yhdd] = %@",mDict[@"yhdd"]);
        
        [mDict removeObjectForKey:@"yhdd"];
        NSLog(@"mDict = %@",mDict);
        
        // 修改元素的简写
        mDict[@"swk"] = @"monekysun";
        NSLog(@"mDict = %@",mDict);
        
        
        [mDict   removeAllObjects];
        NSLog(@"mDict = %@",mDict);
        
        
        
        
    }
    return 0;
}
