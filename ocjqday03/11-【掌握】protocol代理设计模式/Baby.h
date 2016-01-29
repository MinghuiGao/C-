//
//  Baby.h
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"
@class Father;
@interface Baby : Person

@property (nonatomic,assign) int sleepValue;
@property (nonatomic,assign) int lifeValue;

@property (nonatomic,strong) Father *father;


-(void)cry;
-(void)needToEat;

@end
