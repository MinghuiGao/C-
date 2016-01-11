//
//  Beauty.h
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beauty : NSObject
{
    NSString *_name;
    NSString *_telNo;
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setTelNo:(NSString *)telNo;
-(NSString *)telNo;
@end
