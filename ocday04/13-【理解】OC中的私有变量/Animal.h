//
//  Animal.h
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
// 1 在。h文件中定义全局变量，必须要使用5修饰。否则报错。
// 2 在类的.m文件中的对象方法和类方法都可以访问。
// 3 不能在.m中定义重名的变量。
// 4 可以在类的外部访问，但是不起作用。
//static int zhongleiShuliang = 1 ;
extern int zhongleiShuliang;

@interface Animal : NSObject
{
    // 缺省的是@protected
    NSString *_name;
    @private
    int _age;
}

-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)showInof;
+(void)showInfo;
@end
