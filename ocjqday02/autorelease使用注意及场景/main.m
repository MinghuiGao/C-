//
//  main.m
//  autorelease使用注意及场景
//
//  Created by 高明辉 on 16/1/25.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
/*
    autorelease方法的基本作用
    给对象发送一条autorelease消息，会将对象方法自动释放池中。
    当自动释放池被销毁时，会对池子内的对象统一做一次release。
    方法返回对象本身。
    调用完autorelease后，对象的计数器不变。
 
    autorelease的好处：
        不用担心对象的释放时间，不用担心误使用僵尸对象了。
 
    注意点：
        1）占用内存大的对象，以及只使用一次的对象，不要随便使用autorelease。
        可以通过手动来释放，避免占用过长时间的内存。
        2）autorelease方法不代表对性一定会被释放，只是将池子中的对象统一做了一次release操作。
    使用用法：
        在创建好了一个对象之后，调用起autorelease方法。
 
    自动释放池：
        ios 5.0之前
            NSAutoreleasePool *pool = [[NSAutoreleasePool alloc ]init];
 
            [pool release];    //    [pool drain];
 
        iOS 5.0 以后
            @autoreleasepool{}
 
    常见错误：
        在调用了autorelease之后，又调用release方法。
        会造成访问僵尸对象。
        
        autorelease如果调用n次，那么会在池子销毁时对该对象release n 次，也会造成访问僵尸对象。
 
 
 */
int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        Person *p = [[[Person alloc]init]autorelease];
//        [ p retain];
        //  autorelease也是realse，如果调用n次，就会在池子销毁时将对象释放n次。
        [p autorelease];
    }
    return 0;
}

void test(){
    @autoreleasepool {
        //        Person *p = [[Person alloc]init];
        //        // 把p对象放到自动释放池中。
        //        [p autorelease];// 返回的事当前对象。
        
        Person *p = [[[Person alloc]init] autorelease];// 1
        [p run];
        
        [p release];// 0 -- deallloc
        
        
    }// 会再一次release，这是的p已经被释放了，所以就会调用僵尸对象。
    //    [p run];
}
