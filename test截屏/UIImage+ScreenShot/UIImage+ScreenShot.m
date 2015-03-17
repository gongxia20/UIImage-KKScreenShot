//
//  UIImage+ScreenShot.m
//  test截屏
//
//  Created by ykh on 15/3/17.
//  Copyright (c) 2015年 YeKaiHua. All rights reserved.
//

#import "UIImage+ScreenShot.h"

@implementation UIImage (ScreenShot)

//根据给定的View,获取该View的整个页面截图
+ (UIImage *)getImageFromView:(UIView *)containerView
{
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(containerView.frame.size.width, containerView.frame.size.height), NO, 1.0);  //NO，YES 控制是否透明
    
    [containerView.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    // 生成后的image
    
    return image;
}

// 根据给定的View，从其指定区域截取一张新得图片
+ (UIImage *)getImageFromView:(UIView *)fromView withRect:(CGRect)rect
{
    //大图bigImage
    //定义myImageRect，截图的区域
    CGRect myImageRect = rect;
    CGImageRef imageRef = [self getImageFromView:fromView].CGImage;
    CGImageRef subImageRef = CGImageCreateWithImageInRect(imageRef, myImageRect);
    CGSize size;
    size.width = myImageRect.size.width;
    size.height = myImageRect.size.height;
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, myImageRect, subImageRef);
    UIImage* smallImage = [UIImage imageWithCGImage:subImageRef];
    UIGraphicsEndImageContext();
    return smallImage;
}

// 根据给定得图片，从其指定区域截取一张新得图片
+ (UIImage *)getImageFromImage:(UIImage *)fromImage withRect:(CGRect)rect
{
    //大图bigImage
    //定义myImageRect，截图的区域
    CGRect myImageRect = rect;
    CGImageRef imageRef = fromImage.CGImage;
    CGImageRef subImageRef = CGImageCreateWithImageInRect(imageRef, myImageRect);
    CGSize size;
    size.width = myImageRect.size.width;
    size.height = myImageRect.size.height;
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, myImageRect, subImageRef);
    UIImage* smallImage = [UIImage imageWithCGImage:subImageRef];
    UIGraphicsEndImageContext();
    return smallImage;
}

@end
