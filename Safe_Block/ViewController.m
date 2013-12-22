//
//  ViewController.m
//  Safe_Block
//
//  Created by 蔡 雪钧 on 12/21/13.
//  Copyright (c) 2013 cxjwin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 100, 40);
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"Present" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clickButton:(UIButton *)button
{
    SecondViewController *viewController = [[SecondViewController alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
    [viewController release];
}

@end
