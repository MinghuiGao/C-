//
//  Student.m
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student


-(void)findHouse{
    NSLog(@"%@要找房子。",self.name);
    [self.delegate findHouse];
    
}
@end
