//
//  ViewController.m
//  CricleScrollerView
//
//  Created by jaybin on 15/4/20.
//  Copyright (c) 2015年 jaybin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     *  初始化轮播图片数组
     */
    UIImageView *imageView0 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image0"]];
    imageView0.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image1"]];
    imageView1.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image2"]];
    imageView2.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image3"]];
    imageView3.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    
    NSArray *imageArray = [NSArray arrayWithObjects:imageView0, imageView1, imageView2, imageView3, nil];
    
    /**
     *  初始化轮播ScrollerView
     */
    cricleScrollerView = [[CricleScrollViewController alloc] initWithFrame:CGRectMake(0.0, 100.0, self.view.bounds.size.width, 200) andImagesArray:imageArray];
    [self.view addSubview:cricleScrollerView.view];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
