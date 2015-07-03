//
//  ViewController.m
//  HookObjectMehods
//
//  Created by 小伍 on 15-7-3.
//  Copyright (c) 2015年 小伍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *redButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [redButton setFrame:CGRectMake(0, 100, 100, 100)];
    [redButton setBackgroundColor:[UIColor redColor]];
    [redButton setTitle:@"红色Button" forState:UIControlStateNormal];
    [redButton addTarget:self action:@selector(redButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:redButton];
    
    
    UIButton * blueButton = [[UIButton alloc]initWithFrame:CGRectMake(120, 100, 100, 100)];
    [blueButton setBackgroundColor:[UIColor blueColor]];
    [blueButton setTitle:@"蓝色Button" forState:UIControlStateNormal];
    [blueButton addTarget:self action:@selector(blueButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blueButton];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)redButtonAction
{
    NSLog(@"我是红色Button");
}
- (void)blueButtonAction
{
    NSLog(@"我是蓝色Button");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
