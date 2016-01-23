//
//  Dog.h
//  ocday04
//
//  Created by 高明辉 on 16/1/22.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Animal.h"

@interface Dog : Animal
{
    int _legs;
}
-(void)dogEat;
-(void)eat;
-(instancetype)initWith:(NSString *)name andAge:(int)age andLegs:(int)legs;

@end
