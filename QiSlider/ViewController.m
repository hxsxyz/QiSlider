//
//  ViewController.m
//  QiSlider
//
//  Created by QiShare on 2018/7/31.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.navigationController pushViewController:[TestViewController new] animated:YES];
    });
}

@end
