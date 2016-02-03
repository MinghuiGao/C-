//
//  YHDD.m
//  ocjqday05
//
//  Created by 高明辉 on 16/2/4.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "YHDD.h"

// static 表明这个变量只能在本文件中使用。并且已经存放在数据区。
static YHDD *instance = nil;
@implementation YHDD

+(instancetype)shareInstance{
    if (instance == nil) {
        instance = [[self allocWithZone:NULL]init];
    }
    return instance;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    @synchronized(self) { // 保证该单例模式是线程安全的。
        if (instance == nil) {
            instance = [super allocWithZone:zone];
            return instance;
        }
    }
    return instance;
}

-(id)copyWithZone:(NSZone *)zone{
    return self;
}
-(id)retain{
    return self;
}
-(NSUInteger)retainCount{
    return NSUIntegerMax;
}
-(oneway void)release{
    
}
-(id)autorelease{
    return self;
}
@end
