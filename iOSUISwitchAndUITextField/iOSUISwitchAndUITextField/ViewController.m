//
//  ViewController.m
//  iOSUISwitchAndUITextField
//
//  Created by djstava on 22/12/2016.
//  Copyright © 2016 xugaoxiang.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad] ;
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个UISwitch对象
    UISwitch* mySwitch = [[UISwitch alloc] init] ;
    
    //设置UISwitch的位置，注意，UISwitch的宽和高是无法改变的
    mySwitch.frame = CGRectMake(100, 100, 100, 40) ;
    
    //UI上那个点的颜色
    mySwitch.thumbTintColor = [UIColor redColor] ;
    
    //打开状态的颜色
    mySwitch.onTintColor = [UIColor blueColor] ;
    
    //UISwitch的初始状态
    //YES : 打开状态
    //NO : 关闭状态
    //mySwitch.on = YES ;
    
    //或者可以使用方法来设置,使用动画效果
    [mySwitch setOn:YES animated:YES] ;
    
    //响应事件
    [mySwitch addTarget:self action:@selector(switchPress) forControlEvents:UIControlEventValueChanged] ;
    
    [self.view addSubview:mySwitch] ;
    
    //创建UITextField对象
    UITextField* textField = [[UITextField alloc] init] ;
    
    //设置位置
    textField.frame = CGRectMake(100, 300, 200, 40) ;
    
    //显示的文本
    textField.text = @"哈啰" ;
    
    //设置字体及大小
    textField.font = [UIFont systemFontOfSize:20] ;
    
    //设置文本的颜色
    textField.textColor = [UIColor blackColor] ;
    
    //提示文字,当textField.text为空时显示
    textField.placeholder = @"请输入文本..." ;
    
    //是否作为密码
    //YES : 显示圆点加密
    textField.secureTextEntry = NO ;
    
    //边框style
    textField.borderStyle = UITextBorderStyleRoundedRect ;
    
    //keyboard类型
    textField.keyboardType = UIKeyboardTypePhonePad ;
    
    [self.view addSubview:textField] ;
 }

//UISwitch事件响应方法
- (void)switchPress {
    NSLog(@"switch is pressed.") ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
