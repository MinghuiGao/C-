//
//  main.m
//  mrc内存管理
//
//  Created by 高明辉 on 16/1/23.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"
/**
    1、为什么要进行内存管理？
        移动设备的内存极其有限，每个app所占用的内存是有限制的，当超过限制之后系统可能会强制关掉app，造成应用的闪退（crash），影响用户体验。
        在什么情况下会占用内存呢？
            当我们创建一个OC对象，比如一个子弹类，一个飞机，或者加载一个比较大的图片等等，都会占用app运行时的内存。
        要想使自己的应用尽可能少的减少crash，就必须要学会OC的内存管理。主要管理的就是堆内存。
        
        主要管理的范围就是OC的对象，即任何继承自NSObject的类的实例对象。
        非OC对象一般放在栈区。比如基础数据类型，他们是不需要程序员手动分配空间的。
        
    2、引用计数器的介绍
        OC中如何来回收一个对象呢？
        在OC中，每一个实例对象被创建之后都有一个引用计数器，用一个unsigned long类型来存储的一个整数，用来表示当前的对象被引用的计数。
        对象创建之后，引用计数器的值为1.当引用计数器的 值为0的时候，系统会向对象发送dealloc消息，来执行对象的”临终遗言“，进而销毁对象，释放内存空间。
        我们如何来知道对象被销毁了呢？
            答：通过重写dealloc方法，如果dealloc方法被调用，就说明对象被销毁了。
             重写dealloc方法的规则：
             1、在dealloc方法中将对象所占用的资源释放
             2、调用父类的dealloc方法， 并且必须要在方法的最后调用。
        
    3、程序员如何操作引用计数器：
        1）当对象被引用了，对象的引用计数器需要＋1；
            使用retain方法来使对象的引用计数器＋1。
        2）当对象少了一次引用的时候，对象的引用计数器要－1；
            使用release方法使对象的引用计数器－1。
        3）可以使用retainCount方法来查看当前对象的引用计数器。
 
        注意：
            1）对象在创建出来之后，默认的引用计数器就是1
            2）调用release方法并不会销毁对象，而是让对象的引用计数器－1。
 
    4、单个对象内存管理
 
    5、多个对象内存管理。
        在游戏中，斗地主，一个人开好房间之后，等其他人来。
        在Person类中有一个实例变量（属性）Room类的对象，表示当前的person在哪个房间里玩游戏。
        
        当把A对象设置成B对象的属性的时候，需要将A的引用计数＋1，通常做法是在B对象的set方法中对A进行retain操作。
        在B对象被销毁的时候，注意在dealloc方法中对A对象进行一次release操作。以保证在不使用A对象的时候，对其引用计数器－1.
    6、set 方法内存管理
        如果重复调用多次set 方法的话，每次调用都会给相同的对象retain一次，但是在dealloc的时候，只会release一次，这样会造成内存泄漏，如何解决？
        答：通过判断设置进来的对象是否相同来选择是否进行retain操作。
 
 */
int main(int argc, const char * argv[]) {
    // 多对象内存管理
    Person *p = [Person new];
    p.name = @"阿发";

    Room *r1 = [Room new];\
    r1.name = @"1号房间";
    
    // p对象使用了r1,应该让r1 的引用计数＋1.
    p.room = r1;// 这里调用的是set方法，所以我们可以在set方法中将r1的引用计数＋1.
    // 修改完set方法之后，下面的两句设置代码，相当于什么都没做。因此不会增加r1的引用计数
    p.room = r1;
    p.room = r1;
    NSLog(@"r1 retainCount : %lu" ,[r1 retainCount]);
    
    [p showInfo];
    
    [p release ];
    [r1 release];

    
    
    return 0;
}

void test(){
    // 1 p是在栈区，p指向的对象在堆区，需要程序员手来管理。
    Person *p = [Person new];
    NSLog(@"p retainCount = %lu",[p retainCount]);
    p.name = @"阿发";
    [p sayHi];
    
    // 引用计数器为1，对象是不会被释放的，因此就造成了内存泄漏。
    [p release];
    // 为了避免释放之后还误使用，在release后，将对象置为nil
    p = nil;
    /*
     使用野指针访问僵尸对象.有的时候会出问题,有的时候不会出问题.
     
     当野指针指向的僵尸对象所占用的空间还没有分配给别人的时候,这个时候其实是可以访问的.
     因为对象的数据还在.
     当野指针指向的对象所占用的空间分配给了别人的时候 这个时候访问就会出问题.
     */
    NSLog(@"p retainCount = %lu",[p retainCount]);
    [p sayHi];
    p.name = @"";// 不会报错，因为相当于调用了set方法，在OC中向

}
