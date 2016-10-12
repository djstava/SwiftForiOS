//
//  ViewController.m
//  UIButtonDemo
//
//  Created by djstava on 12/10/2016.
//  Copyright © 2016 djstava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //类方法创建UIButton对象，不能用alloc和init组合来创建，这点和UILable不一样
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 100, 100, 40);
    
    //设置按钮上的文本显示信息
    [button setTitle:@"我是按钮" forState:UIControlStateNormal];
    
    //按钮被按下后的文本显示信息
    [button setTitle:@"按钮被按下" forState:UIControlStateHighlighted];
    
    //设置字体大小
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    
    //设置按钮风格颜色，TintColor和TitleColor同时存在是TintColor不起作用
    [button setTintColor: [UIColor orangeColor]];
    
    //设置按钮颜色
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    //设置按钮被按下的颜色
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted];
    
    //响应点击事件，UIControlEventTouchUpInside为点击类型，点击完成后弹开仍在按钮的范围内，与其相对应的是UIControlEventTouchUpOutside，弹开后在按钮的外面
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    //图片按钮
    UIButton* imageButton = [UIButton buttonWithType:UIButtonTypeCustom];
    imageButton.frame = CGRectMake(100, 200, 100, 40);
    [imageButton setImage:[UIImage imageNamed:@"xiaoxin.jpg"] forState:UIControlStateNormal];
    [imageButton setImage:[UIImage imageNamed:@"xiaowanzi.jpg"] forState:UIControlStateHighlighted];

    
    [self.view addSubview:button];
    [self.view addSubview:imageButton];
    
    // Do any additional setup after loading the view, typically from a nib.
}

//事件响应函数
- (void)buttonPressed {
    NSLog(@"按钮被按下！");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
