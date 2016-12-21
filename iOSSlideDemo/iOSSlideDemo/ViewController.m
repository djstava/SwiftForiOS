//
//  ViewController.m
//  iOSSlideDemo
//
//  Created by djstava on 21/12/2016.
//  Copyright © 2016 xugaoxiang.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个UISlider，并指定其位置
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    
    //背景颜色
    slider.backgroundColor = [UIColor yellowColor];
    
    //UISlider滑过的颜色
    slider.tintColor = [UIColor blueColor];
    
    //UISlider上点的颜色
    slider.thumbTintColor = [UIColor redColor];
    
    //UISlider响应事件
    [slider addTarget:self action:@selector(sliderPress:) forControlEvents:UIControlEventValueChanged ];
    
    //UISlider的最小值
    slider.minimumValue = 0;
    
    //UISlider的最大值
    slider.maximumValue = 100;
    
    //为YES时，能持续看到UISlider的变化，
    //为NO时，只能在UISlider停止时看到变化
    //本例中，当continuous为YES时，控制台会一直打印当前UISlider的值，而为NO时，滑动过程中不打印值，当滑动停止时才打印
    slider.continuous = NO;
    
    [self.view addSubview:slider];
}

//事件响应方法
- (void)sliderPress:(id)sender{
    NSLog(@"%f",((UISlider*)sender).value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
