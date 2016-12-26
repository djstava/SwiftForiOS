//
//  ViewController.m
//  iOSUIStepperAndUISegmentedControl
//
//  Created by djstava on 25/12/2016.
//  Copyright © 2016 xugaoxiang.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个UIStepper对象并设置其位置
    UIStepper* stepper = [[UIStepper alloc] initWithFrame:CGRectMake(100, 100, 80, 40)] ;
    
    //最小值
    stepper.minimumValue = 0 ;
    
    //最大值
    stepper.maximumValue = 100 ;
    
    //步进的幅度
    stepper.stepValue = 5 ;
    
    //持续响应事件
    stepper.autorepeat = YES ;
    
    //是否将步进结果通过事件响应函数反应出来
    stepper.continuous = NO ;
    
    //添加事件
    [stepper addTarget:self action:@selector(stepperPress:) forControlEvents:UIControlEventValueChanged] ;
    
    [self.view addSubview:stepper] ;
    
    
    //创建一个UISegmentedControl对象并设置其位置
    UISegmentedControl* segControl = [[UISegmentedControl alloc] initWithFrame:CGRectMake(10, 300, 300, 40)] ;
    
    //添加3个元素
    [segControl insertSegmentWithTitle:@"简单" atIndex:0 animated:YES] ;
    [segControl insertSegmentWithTitle:@"一般" atIndex:1 animated:YES] ;
    [segControl insertSegmentWithTitle:@"困难" atIndex:2 animated:YES] ;
    
    //初始选中元素
    segControl.selectedSegmentIndex = 0 ;
    
    //添加事件
    [segControl addTarget:self action:@selector(segControlPress:) forControlEvents:UIControlEventValueChanged] ;
    
    [self.view addSubview:segControl] ;

}

//stepper响应事件
- (void)stepperPress:(UIStepper*)stepper {
    NSLog(@"stepper value:%f",stepper.value) ;
}

//UISegmentedControl事件响应函数
- (void)segControlPress:(UISegmentedControl*)segControl {
    NSLog(@"segControl %ld",segControl.selectedSegmentIndex) ;
}

//当手指触碰到屏幕时，执行该方法
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan") ;
    
    UITouch* touch = [touches anyObject] ;
    if (touch.tapCount == 1) {
        NSLog(@"单击!") ;
    } else if (touch.tapCount == 2) {
        NSLog(@"双击!") ;
    }
}

//当手指在屏幕上滑动时，执行该方法
- (void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesMoved") ;
}

//当手指离开屏幕时，执行该方法
- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded") ;
}

//当手指操作被其它事件中断时，执行该方法，如常见的来电中断
- (void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesCancelled") ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
