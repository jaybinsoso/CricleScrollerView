//  ScrollviewView  循环轮播功能
//  CricleScrollViewController.h
//  AiCai
//
//  Created by jaybin on 15/4/13.
//  Copyright (c) 2015年 jaybin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CricleScrollViewDelegate <NSObject>

- (void) cricleScrollViewDidScroll:(UIScrollView *)scrollView;
- (void) cricleScrollViewDidScrollToIndex:(NSInteger)index;

@end


@interface CricleScrollViewController : UIViewController<UIScrollViewDelegate>{
    UIScrollView *_cricleScrollerview;
    UIPageControl *pageControl;
    NSTimer *timer;//轮播定时器
    
    NSArray *_imageViewsDatasrc;//循环的图片集合
    NSMutableArray *_curImageViews;//当前显示载入的图片集合  3张
    NSInteger _curIndex;//当前指示的图片指针
    NSArray *deepCopyArray;
}

@property (nonatomic,readonly) UIScrollView *cricleScrollerview;
@property (nonatomic,strong) NSArray *imageViewsDatasrc;
@property (nonatomic,strong) id<CricleScrollViewDelegate> delegate;

- (id) initWithFrame:(CGRect)frame  andImagesArray:(NSArray *)imagesArray;

@end
