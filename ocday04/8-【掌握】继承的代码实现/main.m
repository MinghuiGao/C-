//
//  main.m
//  8-【掌握】继承的代码实现
//
//  Created by 高明辉 on 16/1/13.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
/*
    继承的代码实现
 
        1、
        如果要定义一个teacher student schoolmaster，那么有些共同的属性都需要来定义，重复。
        我们思考，这三个都是人，作为人，都有相同的属性，比如 姓名 年龄 身高  性别等。
        因此，我们可以抽取出共同的父类，就是Person类。
 
        2、让Teacher Student SchoolMaster都继承Person 类。
        格式：
        @interface 自类类名 : 父类类名
        @end
        3、
            继承原理，要想不用定义就有某些属性和方法，那么就得通过继承父类的方式。就想儿子继承老爹的财产一样。
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [Student new];
        [stu setName:@"张三"];
        NSLog(@"stu name = %@",[stu name]);
        // studnet中的get和set方法继承自父类。
    }
    return 0;
}
