//
//  main.m
//  13-【理解】OC中的私有变量
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
/*
    OC中的私有变量
    1、在@interface中使用@private修饰的实例变量
    
 
 */
int zlsl = 10;
//int zhongleiShuliang = 1001;

static int fun(){
    return 10;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Animal *animal = [Animal new];
        
//        zhongleiShuliang = 19;
        [animal  showInof];
        
        [Animal showInfo];
        [Animal showInfo];
        [Animal showInfo];
        NSLog(@"alsl = %d",zhongleiShuliang);
        NSLog(@"fun = %d",fun());
    }
    return 0;
}
