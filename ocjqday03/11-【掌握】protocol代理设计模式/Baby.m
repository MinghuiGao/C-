//
//  Baby.m
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Baby.h"
#import "Father.h"
#import "BaoMu.h"
@implementation Baby
-(void)cry{
    NSLog(@"儿子在哭");
    id<BaoMu> bm =self.father.baomuDelegate;
    [bm makeBabySleep:self];
    
}
-(void)needToEat{
    NSLog(@"儿子饿了，要吃饭了");
    id<BaoMu> bm = self.father.baomuDelegate;
    [bm feedBaby:self];
}
@end
