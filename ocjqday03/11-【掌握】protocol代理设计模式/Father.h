//
//  Futher.h
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"
#import "BaoMu.h"
@class Baby;
@class Worker;


@interface Father : Person
@property (nonatomic,strong) Baby *son;

// 父亲要给儿子找一个保姆的代理
@property (nonatomic,strong) Worker<BaoMu> *baomuDelegate;
@end
