//
//  ViewController.m
//  iOSPlistOpsDemo
//
//  Created by djstava on 19/12/2016.
//  Copyright © 2016 xugaoxiang.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //获取plist文件路径
    NSString *path = [[NSBundle mainBundle] pathForResource:@"djstava" ofType:@"plist"];
    NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    NSLog(@"%@",data);
    
    //增加一个键值对
    [data setObject:@"Shanghai" forKey:@"location"];
    
    //沙盒路径
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    //拼接文件名
    NSString *fileName = [[paths objectAtIndex:0] stringByAppendingPathComponent:@"djstava.plist"];
    
    NSLog(@"%@",fileName);
    
    //写入
    [data writeToFile:fileName atomically:YES];
    
    //info.plist
    // File:获取文件的全路径 —— 文件在哪（主bundle）
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    
    //解析 Info.plist
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    //获取当前的版本号
    NSString *version = dict[@"CFBundleShortVersionString"];
    NSLog(@"%@",version);
    
    //获取storyboard文件
    NSString *storyFile = dict[@"UIMainStoryboardFile"];
    NSLog(@"%@",storyFile);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
