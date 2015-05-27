CricleScrollerView
===================================

Overview
----------------------------------
基于ScrollerView进行封装的控件，实现ScrollerView无缝衔接循环轮播。

![github](https://raw.githubusercontent.com/jaybinhe/CricleScrollerView/master/Desktop/CricleScrollerView/CricleScrollerView/CricleScrollerView/screenshots/cricleview.gif)

Usage
----------------------------------
//初始化轮播图片数组<br>
``` objc
UIImageView *imageView0 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image0"]];
imageView0.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image1"]];
imageView1.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);
UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image2"]];
imageView2.frame = CGRectMake(0, 0, self.view.bounds.size.width, 200);

NSArray *imageArray = [NSArray arrayWithObjects:imageView0, imageView1, imageView2, nil];
``` 

//初始化轮播ScrollerView<br>
``` objc 
CricleScrollViewController *cricleScrollerView = [[CricleScrollViewController alloc] initWithFrame:CGRectMake(0.0, 100.0, self.view.bounds.size.width, 200) andImagesArray:imageArray];
[self.view addSubview:cricleScrollerView.view];
```

