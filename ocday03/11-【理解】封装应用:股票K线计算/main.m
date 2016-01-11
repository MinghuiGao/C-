//
//  main.m
//  11-【理解】封装应用:股票K线计算
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KLine.h"
/*
 思考&实现:
 设计一个K线类
     *最低价格(可读(get)写(set))
     *最高价格(可读写)
     *平均价格(只读)
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        KLine *line = [KLine new];
        [line setMaxPrice:15];
        [line setMinPrice:10];
        NSLog(@"最高价格： %.2f,最低价格: %.2f,平均价格: %.2f",[line maxPrice],[line minPrice],[line avgPrice]);
        
    }
    return 0;
}
