//
//  QiSlider.m
//  QiSlider
//
//  Created by QiShare on 2018/7/31.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "QiSlider.h"

@interface QiSlider ()

/*! @brief slider的thumbView */
@property (nonatomic, strong) UIView *thumbView;
/*! @brief 显示value的label */
@property (nonatomic, strong) UILabel *valueLabel;

@end

@implementation QiSlider

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        [self addTarget:self action:@selector(sliderTouchDown:) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
        [self addTarget:self action:@selector(sliderTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

#pragma mark - Overwrite functions

- (CGRect)trackRectForBounds:(CGRect)bounds {
    /*! @brief 重写方法-返回进度条的bounds-修改进度条的高度 */
    bounds = [super trackRectForBounds:bounds];
    return CGRectMake(bounds.origin.x, bounds.origin.y + (bounds.size.height - 3.0) / 2, bounds.size.width, 3.0);
}

- (void)setValue:(float)value animated:(BOOL)animated {
    
    [super setValue:value animated:animated];
    [self sliderValueChanged:self];
}

- (void)setValue:(float)value {
    
    [super setValue:value];
    [self sliderValueChanged:self];
}

#pragma mark - Setter functions

- (void)setValueText:(NSString *)valueText {
    
    if (![_valueText isEqualToString:valueText]) {
        _valueText = valueText;
        
        self.valueLabel.text = valueText;
        [self.valueLabel sizeToFit];
        self.valueLabel.center = CGPointMake(self.thumbView.bounds.size.width / 2, -self.valueLabel.bounds.size.height / 2);
        
        if (!self.valueLabel.superview) {
            [self.thumbView addSubview:self.valueLabel];
        }
    }
}


#pragma mark - Getter functions

- (UIView *)thumbView {
    
    if (!_thumbView && self.subviews.count > 2) {
        _thumbView = self.subviews[2];
    }
    return _thumbView;
}

- (UILabel *)valueLabel {
    
    if (!_valueLabel) {
        _valueLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _valueLabel.textColor = _valueTextColor ?: self.thumbTintColor;
        _valueLabel.font = _valueFont ?: [UIFont systemFontOfSize:14.0];
        _valueLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _valueLabel;
}


#pragma mark - Action functions

- (void)sliderTouchDown:(QiSlider *)sender {
    
    if (_touchDown) {
        _touchDown(sender);
    }
}

- (void)sliderValueChanged:(QiSlider *)sender {
    
    if (_valueChanged) {
        _valueChanged(sender);
    } else {
        sender.valueText = [NSString stringWithFormat:@"%.1f", sender.value];
    }
}

- (void)sliderTouchUpInside:(QiSlider *)sender {
    
    if (_touchUpInside) {
        _touchUpInside(sender);
    }
}


#pragma mark -

- (void)dealloc {
    
    NSLog(@"%s", __FUNCTION__);
}

@end
