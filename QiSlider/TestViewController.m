//
//  TestViewController.m
//  QiSlider
//
//  Created by QiShare on 2018/7/31.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "TestViewController.h"
#import "QiSlider.h"

@implementation TestViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"QiSlider Test";
    self.view.backgroundColor = [UIColor whiteColor];
    
    QiSlider *slider = [[QiSlider alloc] initWithFrame:CGRectMake(30.0, self.view.bounds.size.height / 2, self.view.bounds.size.width - 30.0 * 2, 60.0)];
    slider.minimumValue = .0;
    slider.maximumValue = 10.0;
    slider.thumbTintColor = [UIColor purpleColor];
    slider.minimumTrackTintColor = [UIColor purpleColor];
    slider.maximumTrackTintColor = [[UIColor lightGrayColor] colorWithAlphaComponent:.5];
    [self.view addSubview:slider];
    
    /*
    slider.touchDown = ^(QiSlider *slider) {
        [UIView animateWithDuration:.25 animations:^{
            slider.backgroundColor = [[UIColor purpleColor] colorWithAlphaComponent:.1];
        }];
    };
    slider.valueChanged = ^(QiSlider *slider) {
        slider.valueText = [NSString stringWithFormat:@"%.2f", slider.value];
    };
    slider.touchUpInside = ^(QiSlider *slider) {
        [UIView animateWithDuration:.25 animations:^{
            slider.backgroundColor = [UIColor clearColor];
        }];
    };
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [slider setValue:8.2 animated:YES];
    });
     */
}


#pragma mark -

- (void)dealloc {
    
    NSLog(@"%s", __FUNCTION__);
}

@end
