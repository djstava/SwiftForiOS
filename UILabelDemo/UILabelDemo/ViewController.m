//
//  ViewController.m
//  UILabelDemo
//
//  Created by djstava on 11/10/2016.
//  Copyright © 2016 djstava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *lable = [[UILabel alloc] init];
    lable.text = @"Hello iOS!";
    lable.frame = CGRectMake(100, 100, 100, 40);
    
    lable.backgroundColor = [UIColor grayColor];
    
    lable.shadowColor = [UIColor redColor];
    lable.shadowOffset = CGSizeMake(5, 5);
    
    lable.font = [UIFont systemFontOfSize:20];
    lable.textColor = [UIColor yellowColor];
    lable.textAlignment = NSTextAlignmentCenter;
    lable.numberOfLines = 0;
    
    [self.view addSubview:lable];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
