//
//  Person.h
//  ocday03
//
//  Created by 高明辉 on 16/1/10.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject
{
    NSString *_name;
    Dog *_dog;
}
// 遛狗
-(void)walkDog:(Dog *)dog;

@end
