//
//  Car.h
//  ocday04
//
//  Created by 高明辉 on 16/1/14.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    // 缺省时，是@protected修饰的。
    int _speed;
    @public
    
    NSString *_name;
    @private
    int _wheels;
}
@end
