//
//  ViewController.m
//  ios初体验
//
//  Created by 高明辉 on 15/12/21.
//  Copyright © 2015年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)onBtnClick:(id)sender {
    
    NSLog(@"点击我了！");
    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"我是一个弹框!" message:@"我也是第一次被点击!" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
//
//    
//    [alert show ];
    
    
//    NSString *title = NSLocalizedString(@"A Short Title Is Best", nil);
//    NSString *message = NSLocalizedString(@"A message should be a short, complete sentence.", nil);
//    NSString *cancelButtonTitle = NSLocalizedString(@"Cancel", nil);
//    NSString *otherButtonTitle = NSLocalizedString(@"OK", nil);
//    
//    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
//    
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelButtonTitle style:0 handler:^(UIAlertAction *action) {
//        NSLog(@"The \"Okay/Cancel\" alert's cancel action occured.");
//    }];
//    
//    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//        NSLog(@"The \"Okay/Cancel\" alert's other action occured.");
//    }];
//    
//    // Add the actions.
//    [alertController addAction:cancelAction];
//    [alertController addAction:otherAction];
//    
//    [self presentViewController:alertController animated:YES completion:nil];
//
    
    // create UIAlertController
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"我也是第一次被点击!" message:@"你好，我出现了！" preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    // create UIAlertAction
    UIAlertAction *actionCancle = [UIAlertAction actionWithTitle:@"Cancle" style:UIAlertActionStyleDestructive handler:nil];
    
    UIAlertAction *actionConfirm = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    // add action to controller
    [controller addAction:actionConfirm];
    [controller addAction:actionCancle];
    
    // present the alertController
    
    [self presentViewController:controller animated:YES completion:nil];
    
    
    
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
