//
//  RootViewController.m
//  iOSXIBDemo
//
//  Created by djstava on 27/12/2016.
//  Copyright © 2016 xugaoxiang.com. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UILabel *mLabel;
- (IBAction)mButton:(id)sender;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mButton:(id)sender {
    NSLog(@"button clicked.") ;
}
@end
