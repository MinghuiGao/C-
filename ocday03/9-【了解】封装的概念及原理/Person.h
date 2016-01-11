//
//  Person.h
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
//    @public
    // 人的年龄
    int _age;
}
// set方法
-(void)setAge:(int)age;

// get 方法
-(int)age;
@end
