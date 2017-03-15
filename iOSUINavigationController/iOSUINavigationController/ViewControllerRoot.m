//
//  ViewControllerRoot.m
//  iOSUINavigationController
//
//  Created by djstava on 14/03/2017.
//  Copyright © 2017 xugaoxiang.com. All rights reserved.
//

#import "ViewControllerRoot.h"

@interface ViewControllerRoot ()

@end

@implementation ViewControllerRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"标题";
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithTitle:@"左" style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)];
    
    self.navigationItem.leftBarButtonItem = left;
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(pressRight)];
    self.navigationItem.rightBarButtonItem = right;
}

-(void) pressLeft
{
    NSLog(@"press left.");
}

-(void) pressRight
{
    NSLog(@"press right.");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
