//
//  main.m
//  15-【理解】NSMutableArray及基本使用
//
//  Created by 高明辉 on 16/2/1.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
 /*
    NSMutableArray的介绍机几本使用
    1、NSMubtableArray就是内容可以改变的NSArray。继承自NSArray。
        + array 方法创建一个空数组。
        + arrayWithArray: 用一个NSArray对象中的内容来创建一个NSMutableArray。
      + (instancetype)arrayWithCapacity:(NSUInteger)numItems;
      
      + (nullable NSMutableArray<ObjectType> *)arrayWithContentsOfFile:(NSString *)path;
      + (nullable NSMutableArray<ObjectType> *)arrayWithContentsOfURL:(NSURL *)url;
      - (nullable NSMutableArray<ObjectType> *)initWithContentsOfFile:(NSString *)path;
      - (nullable NSMutableArray<ObjectType> *)initWithContentsOfURL:(NSURL *)url;
  
    2、对NSMutableArray的编辑
      - (void)addObject:(id)object;
      添加一个元素
      
      - (void)addObjectsFromArdObray:(NSArray *)array;
      添加otherArray的全部元素到当前数组中。
      
      - (void)insertObject:(id)anObject atIndex:(NSUInteger)index;
      在index位置插入一个元素
            
      - (void)removeLastObject;
      删除最后一个元素
      
      - (void)removeAllObjects;
      删除所有的元素
      
      - (void)removeObjectAtIndex:(NSUInteger)index;
      删除index位置的元素
      
      - (void)removeObject:(id)object;
      删除特定的元素
      
      - (void)removeObjectsInRange:(NSRange)range;
      删除range范围内的所有元素
      
      - (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
      用anObject替换index位置对应的元素
          替换的简便写法：
          mArray[1] = @"zbj";
  
      - (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
      交换idx1和idx2位置的元素
  
    3、NSMutable Array的错误用法
        将一个NSArray对象赋值给NSMutableArray，并调用NSMutableArray的方法。
        注意；这里相当于用一个子类指针指向了父类对象，并尝试调用子类的方法。
  
  
  */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 注意这里相当于用一个子类指针指向了父类对象，并尝试调用子类的方法。
        NSMutableArray *mArray = @[@"one",@"two",@"three"];
        [mArray addObject:@"four"];
        NSLog(@"mArray = %@",mArray);
    }
    return 0;
}

/**
 NSMutableArray 的编辑方法（增删改查）
 */
void test2(){
    NSMutableArray  *mArray = [NSMutableArray array];
    [mArray addObject:@"one"];
    [mArray addObject:@"one"];
    [mArray addObject:@"one"];
    // 添加一个元素
    [mArray addObject:@"two"];
    [mArray addObject:@"three"];
    NSLog(@"marray = %@",mArray );
    
    // 添加一组元素
    NSArray *array = @[@"fengjie",@"furong",@"sunwk"];
    [mArray addObjectsFromArray:array];
    NSLog(@"mArray = %@",mArray);
    
    // 在指定位置插入一个元素
    [mArray insertObject:@"www" atIndex:0];// 如果index不在数组大小的范围内，那么报错。
    NSLog(@"mArray = %@",mArray);
    
    // 删除元素
    [mArray removeObject:@"one"]; //  删除所有的@"one"
    NSLog(@"mArray = %@",mArray );
    
    [mArray  removeLastObject];
    NSLog(@"mArray = %@",mArray );
    
    [mArray removeObjectAtIndex:0]; // 删除指定索引的元素
    NSLog(@"mArray = %@",mArray );
    
    
    [mArray removeObjectsInRange:NSMakeRange(1, 2)];  // 删除指定范围内的元素
    NSLog(@"mArray = %@",mArray );
    
    [mArray removeObjectsInArray:array]; // 删除array中有的元素
    NSLog(@"mArray = %@",mArray );
    
    [mArray removeAllObjects]; // 删除所有元素
    NSLog(@"mArray = %@",mArray );
    
    [mArray addObjectsFromArray:array];
    [mArray replaceObjectAtIndex:0 withObject:@"newString"]; // 替换指定位置上的元素
    NSLog(@"mArray = %@",mArray );
    
    // 替换的简便写法：
    mArray[1] = @"zbj";
    NSLog(@"mArray = %@",mArray );
    
    [mArray exchangeObjectAtIndex:1 withObjectAtIndex:2]; // 交换指定位置上的两个元素
    NSLog(@"mArray = %@",mArray );

}

/*
 NSMutableArray的介绍和创建方法
 
 */
void test1(){
    NSMutableArray  *mArray = [NSMutableArray array];
    [mArray addObject:@"one"];
    [mArray addObject:@"two"];
    NSLog(@"marray = %@",mArray );
    
    NSMutableArray *mArray2 = [NSMutableArray arrayWithCapacity:1];
    [mArray2 addObject:@"fengjie"];
    [mArray2 addObject:@"furong"];
    
    NSLog(@"mArray2 = %@",mArray2);
    
    NSMutableArray *mArray3 = [NSMutableArray arrayWithObjects:@"onefj",@"twoFr",@"threeswk", nil];
    NSLog(@"mArray3 = %@",mArray3);
    
    // 包装一个NSArray
    NSArray *array = @[@"one",@"two",@"3"];
    NSMutableArray *mArray4 = [NSMutableArray arrayWithArray:array];
    NSLog(@"mArray4 = %@",mArray4);
    
    // 写入到文件中
    BOOL isOk = [mArray4 writeToFile:@"/Users/gaominghui/Desktop/array4.plist" atomically:YES];
    if (isOk) {
        NSLog(@"写入成功");
        
        // 读取文件，并创建一个NSMutableArray
        NSMutableArray *mArr5 = [NSMutableArray arrayWithContentsOfFile:@"/Users/gaominghui/Desktop/array4.plist"];
        NSLog(@"mArr5 = %@",mArr5);
        
        // 调用对象方法来从文件中创建一个NSMutableArray.
        NSMutableArray *mArr6 = [[NSMutableArray alloc] initWithContentsOfFile:@"/Users/gaominghui/Desktop/array4.plist"];
        NSLog(@"mArr6 = %@",mArr6);
        
        // 创建一个本地文件的NSURL
        NSURL *url = [NSURL URLWithString:@"file:///Users/gaominghui/Desktop/array4.plist"];
        if (url != nil) {
            NSMutableArray *mArr7 = [NSMutableArray arrayWithContentsOfURL:url];
            NSLog(@"mArr7 = %@",mArr7);
        }
    }
}
