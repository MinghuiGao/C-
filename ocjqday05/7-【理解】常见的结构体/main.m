//
//  main.m
//  7-【理解】常见的结构体
//
//  Created by 高明辉 on 16/2/3.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
    OC中常见的结构体：
   CG－》Core Graphic 核心动画
    1、NSPoint和CGpoint
        标示一个点。有x，y坐标。
        注意：结构体不需要用指针。
        使用NSMakePoint（double x,double y)来创建NSPoint
        CGPointMake(double x, double y) 来创建CGPoint
    2、NSSize  和 CGSize
        标示二维空间中一个物体的大小，高度，宽度。
        
 
    3、NSRect 和 CGRect
        用来表示二维空间中的某个物体的位置和尺寸。
    
    结论：
        NS+的结构体，使用NSMakexxx 来创建。
        CG+的结构体，使用CGxxxMake 来创建。
        注意：都是使用的函数。
        苹果官方推荐：使用/CG＋的结构体
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSRect rect = NSMakeRect(1, 1, 100, 100);
        
        CGRect rect2 = CGRectMake(2,2, 50, 50);
        
    }
    return 0;
}
/**/
void test2(){
    NSSize size = NSMakeSize(3.14, 9.0);
    NSLog(@"size : width = %.2f, height = %.2f",size.width,size.height);
    
    CGSize size2 = CGSizeMake(1.13, 10.2);
    NSLog(@"cgsize : widht %.2f,height = %.2f",size2.width,size2.height);
}
/**
 
 */
void test1(){
    NSPoint point = NSMakePoint(10, 20);
    NSLog(@"x = %.2f,y = %.2f",point.x,point.y);
    
    CGPoint point2 = CGPointMake(10, 30);
    NSLog(@"x = %.2f,y = %.2f",point2.x,point2.y);
    
}