//
//  DZPAlterView.h
//  AlterView
//
//  Created by dengzhiping on 16/6/20.
//  Copyright © 2016年 dengzhiping. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DZPAlterView : UIView

/**
 *  弹窗视图的高度
 */
@property (nonatomic, assign) CGFloat ViewHeight;


/**
 *  弹窗视图的宽度
 */
@property (nonatomic, assign) CGFloat ViewWidth;

/**
 *  弹窗显示的文字的大小
 */
@property (nonatomic, assign) CGFloat textFont;


/**
 *  弹窗显示的文字的颜色
 */

@property (nonatomic, strong) UIColor *textColor;


/**
 *  弹窗视图的背景颜色
 */
@property (nonatomic, strong) UIColor *backGroundColor;


/**
 *  弹窗视图的透明度
 */
@property (nonatomic, assign) CGFloat viewAlpha;


/**
 *  调用弹窗的方法
 *
 *   
 */
- (void)alterViewWithString:(NSString *)str;

@end
