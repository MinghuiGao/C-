//
//  main.m
//  17-【理解】NSDictionary的简写及文件操作
//
//  Created by 高明辉 on 16/2/1.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    NSDictionary 的简写及文件操作
    1、简写
        创建一个NSDictionary
        @{@"key1":@"valueObject",@"key2":@"valueObject2",@"key3":@"valueObject3"};
        
        访问一个字典的元素
            dict[@"key1"];
 
    2、将字典写入文件
     - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
     - (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)atomically;
    
    3、从文件中读取内容到字典
     + (id)dictionaryWithContentsOfFile:(NSString *)path;
         保存结果是xml文件格式,但苹果官方推荐为plist后缀。
         把字典放到NSArray中,调用array的writeToFile
     + (id)dictionaryWithContentsOfURL:(NSURL *)url;
 
    4、NSDictionary的使用注意
        在创建字典的时候，key不能重复。重复的key的value值添加不进去，但是不会报错。
        相同的key值，以第一次添加的为准。
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = @{@"key1":@"valueObject1",@"key2":@"valueObject2",@"key3":@"valueObject3"};
        NSLog(@"dict = %@",dict);
        
        NSLog(@"dict[@key1] = %@",dict[@"key1"]);
        
        BOOL isOk = [dict writeToFile:@"/Users/gaominghui/Desktop/dict.plist" atomically:YES];
        if (isOk) {
            NSLog(@"写入成功");
            //从文件中读取字典的内容
            NSDictionary *dict2 = [NSDictionary dictionaryWithContentsOfFile:@"/Users/gaominghui/Desktop/dict.plist"];
            NSLog(@"dict2 = %@",dict2);
        }
        
        NSDictionary *dict3 = [NSDictionary dictionaryWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2",@"v3",@"k1",@"v4",@"k4", nil];
        NSLog(@"dict3 = %@",dict3   );
        
        
    }
    return 0;
}
