//
//  QiSlider.h
//  QiSlider
//
//  Created by QiShare on 2018/7/31.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QiSlider : UISlider

/*! @brief slider的value文本 */
@property (nonatomic, copy) NSString *valueText;
/*! @brief slider的value字体 */
@property (nonatomic, strong) UIFont *valueFont;
/*! @brief slider的value文本颜色 */
@property (nonatomic, strong) UIColor *valueTextColor;
/*! @brief 按下slider时的回调block */
@property (nonatomic, copy) void(^touchDown)(QiSlider *);
/*! @brief slider的value发生变化时的回调block */
@property (nonatomic, copy) void(^valueChanged)(QiSlider *);
/*! @brief 松开slider时的回调block */
@property (nonatomic, copy) void(^touchUpInside)(QiSlider *);

@end
