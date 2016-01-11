//
//  KLine.m
//  ocday03
//
//  Created by 高明辉 on 16/1/11.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "KLine.h"

@implementation KLine
// maxPrice的set 和get 方法。
-(void)setMaxPrice:(float)maxPrice{
    _maxPrice = maxPrice;
    // 在设置最新的最高价格之后，平均价格也发生了改变，因此要更新一下平均价格。
    _avgPrice = (_maxPrice + _minPrice ) / 2;
}
-(float)maxPrice{
    return _maxPrice;
}

// _minPrice
-(void)setMinPrice:(float)minPrice{
    _minPrice = minPrice;
    // 在设置最新的最低价格之后，平均价格也发生了改变，因此要更新一下平均价格。
    _avgPrice = (_maxPrice + _minPrice ) / 2;
}
-(float)minPrice{
    return _minPrice;
}

// _avgPrice
-(float)avgPrice{
    return _avgPrice;
}
@end
