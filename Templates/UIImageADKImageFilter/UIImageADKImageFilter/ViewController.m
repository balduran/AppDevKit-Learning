//
//  ViewController.m
//  UIImageADKImageFilter
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *sampleButton;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

- (IBAction)sampleButtonTapHandler:(id)sender;

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

    // Requied image: Love.png
    // UIControlStateNormal: color = red, title = "CLICK"
    // UIControlStateHighlighted: color = orange, title = "PRESS"
    
}

- (IBAction)sampleButtonTapHandler:(id)sender {
}

@end
