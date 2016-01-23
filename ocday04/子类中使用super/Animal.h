//
//  Animal.h
//  ocday04
//
//  Created by 高明辉 on 16/1/22.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
{
    NSString *_name;
    int _age;
    
}
-(void)eat;
-(instancetype)initWith:(NSString *)name andAge:(int)age;

@end
