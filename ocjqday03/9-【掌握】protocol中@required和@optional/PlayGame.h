//
//  PlayGame.h
//  ocjqday03
//
//  Created by 高明辉 on 16/1/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PlayGame <NSObject>

@required
-(void)kill;
-(void)run;

@optional
-(void)shout;


@end
