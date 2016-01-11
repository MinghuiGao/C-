//
//  KLine.h
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KLine : NSObject
{
    float _maxPrice;
    float _minPrice;
    float _avgPrice;
}
// maxPrice的set 和get 方法。
-(void)setMaxPrice:(float)maxPrice;
-(float)maxPrice;

// _minPrice
-(void)setMinPrice:(float)minPrice;
-(float)minPrice;

// _avgPrice
-(float)avgPrice;
@end
