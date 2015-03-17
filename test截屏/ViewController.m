//
//  ViewController.m
//  test截屏
//
//  Created by ykh on 15/3/16.
//  Copyright (c) 2015年 YeKaiHua. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ScreenShot.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.img.hidden=YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)takePhoto:(id)sender {
    
    
    self.img.hidden=NO;
    
    
    self.img.image=[UIImage getImageFromView:self.view withRect:self.view.bounds];
    
}

@end
