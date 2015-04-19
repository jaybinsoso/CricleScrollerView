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
    NSString *imageUrl0 = [[NSBundle mainBundle] pathForResource:@"image0" ofType:@"jpg"];
    NSString *imageUrl1 = [[NSBundle mainBundle] pathForResource:@"image1" ofType:@"jpg"];
    NSString *imageUrl2 = [[NSBundle mainBundle] pathForResource:@"image2" ofType:@"jpg"];
    NSString *imageUrl3 = [[NSBundle mainBundle] pathForResource:@"image3" ofType:@"jpg"];
    
    UIImageView *imageView0 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:imageUrl0]];
    imageView0.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:imageUrl1]];
    imageView1.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:imageUrl2]];
    imageView2.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:imageUrl3]];
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
