//
//  Worker.h
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"
#import "BaoMu.h"
// 这是一个普通的工人，要想当保姆就必须要满足保姆的要求，即实现保姆的协议。
@interface Worker : Person <BaoMu>

@end
