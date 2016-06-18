//
//  ViewController.m
//  ADKGradientView
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import "ViewController.h"
#import <AppDevKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupView {
    ADKGradientView *gradientView = [[ADKGradientView alloc] initWithFrame:CGRectMake(30.0f, 30.0f, 100.0f, 200.0f)];
    gradientView.beginColor = [UIColor ADKColorWithHexNumber:0x1DB2E8];
    gradientView.endColor = [UIColor ADKColorWithHexNumber:0x380180];
    gradientView.blensType = ADKBlensTypeFromLeftTopToRightBottom;
    [self.view addSubview:gradientView];
}

@end
