//
//  main.m
//  Category联系
//
//  Created by 高明辉 on 16/2/1.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person_Person_Gmh.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p work];
        [p GMHWrok];
        p.name = @"GMH";

        NSLog(@"p name = %@",p.name);
    }
    return 0;
}
