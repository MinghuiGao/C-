//
//  main.m
//  14-【理解】NSArray 与字符串
//
//  Created by 高明辉 on 16/1/31.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSArray 和 字符串
    1、把数组元素链接成字符串
        调用componentsJoinedByString:
 
    2、把字符串分割成NSArray数组。
        调用componentsSeparatedByString:
 
    补充：
        NSArray<NSString *> *array;
        这样声明的array，数组的元素只能是NSString类型的对象。TODO：测试了之后，好像限制不起作用...
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[@"dbj1",@"dbj2",@"dbj3",@"dbj4",@"dbj5"];
        NSString *res = [array componentsJoinedByString:@"+"];
        NSLog(@"res = %@",res);
        
        NSArray *array2 = [res componentsSeparatedByString:@"+"];
        NSLog(@"array2 = %@",array2);
        
        // 测试NSArray<NSString *> *array;
        NSNumber *num = [NSNumber numberWithChar:'a'];
        NSArray<NSString *> *array3 = [NSArray arrayWithObjects:@"test1",num,array2 , nil];
        NSLog(@"array3 = %@",array3);
    }
    return 0;
}
