//
//  Father.h
//  ocday04
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "Person.h"

@interface Father : NSObject
{
    NSString *_name;
    
}

-(void)setName:(NSString *)xing;
-(NSString *)name;



-(void)showInfo;

@end
