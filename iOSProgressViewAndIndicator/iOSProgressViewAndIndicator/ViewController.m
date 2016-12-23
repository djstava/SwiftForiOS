//
//  ViewController.m
//  iOSProgressViewAndIndicator
//
//  Created by djstava on 23/12/2016.
//  Copyright © 2016 xugaoxiang.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个进度条
    UIProgressView* pView = [[UIProgressView alloc] init] ;
    
    //位置
    pView.frame = CGRectMake(50, 100, 200, 40) ;
    
    //当前值，范围是 0 ~ 1
    pView.progress = 0.5 ;
    
    //进度条当前值之后的颜色
    pView.trackTintColor = [UIColor yellowColor] ;
    
    //整个进度条的背景颜色
    pView.backgroundColor = [UIColor blueColor] ;
    
    //当前进度的颜色
    pView.progressTintColor = [UIColor redColor] ;
    
    //进度条style
    pView.progressViewStyle = UIProgressViewStyleBar ;
    
    [self.view addSubview:pView] ;
    
    //创建一个UIActivityIndicatorView对象并设置其位置
    UIActivityIndicatorView* indicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 300, 80, 40)] ;

    //风格类型
    indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray ;

    //启动UIActivityIndicatorView
    [indicator startAnimating] ;
    
    [self.view addSubview:indicator] ;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
