//
//  ZSScaleLabel.h
//  Animations
//
//  Created by YouXianMing on 15/12/17.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//
//  文字放大/缩小并改变颜色效果动画

#import <UIKit/UIKit.h>

@interface ZSScaleLabel : UIView

/**
 *  Label's text.
 */
@property (nonatomic, strong) NSString *text;

/**
 *  Label's color.
 */
@property (nonatomic, strong) UIFont   *font;

/**
 *  The Label's scale before the animation start.
 */
@property (nonatomic, assign) CGFloat   startScale;

/**
 *  The label's scale after the animation ended.
 */
@property (nonatomic, assign) CGFloat   endScale;

/**
 *  The show label's color.
 */
@property (nonatomic, strong) UIColor  *backedLabelColor;

/**
 *  The animated label's color.
 */
@property (nonatomic, strong) UIColor  *colorLabelColor;

/**
 *  Start animation.
 */
- (void)startAnimation;

@end
