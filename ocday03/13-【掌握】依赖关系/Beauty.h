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
    NSString *_telNum;
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setTelNum:(NSString *)telNum;
-(NSString *)telNum;


@end
