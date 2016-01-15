//
//  Person.h
//  ocday05
//
//  Created by 高明辉 on 16/1/15.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}
-(void)setName:(NSString *)name;
-(NSString *)name;
@end
