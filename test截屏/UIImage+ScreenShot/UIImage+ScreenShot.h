//
//  UIImage+ScreenShot.h
//  test截屏
//
//  Created by ykh on 15/3/17.
//  Copyright (c) 2015年 YeKaiHua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ScreenShot)
//根据给定的View,获取该View的整个页面截图
+ (UIImage *)getImageFromView:(UIView *)containerView;

// 根据给定的View，从其指定区域截取一张新得图片
+ (UIImage *)getImageFromView:(UIView *)fromView withRect:(CGRect)rect;

// 根据给定得图片，从其指定区域截取一张新得图片
+ (UIImage *)getImageFromImage:(UIImage *)fromImage withRect:(CGRect)rect;
@end
