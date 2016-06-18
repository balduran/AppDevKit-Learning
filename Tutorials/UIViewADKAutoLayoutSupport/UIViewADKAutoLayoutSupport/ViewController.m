//
//  ViewController.m
//  UIViewADKAutoLayoutSupport
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import <AppDevKit.h>
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *constraintControlButton;
@property (nonatomic, weak) IBOutlet UIImageView *vanillaIceCreamImageView;
@property (nonatomic, weak) IBOutlet UIImageView *chocolateIceCreamImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)constraintControlButtonTapped:(UIButton *)sender {
    sender.selected = !sender.selected;
    // You can also use combination operation instead, like this:
    // [self.vanillaIceCreamImageView ADKHideView:sender.selected withConstraints:ADKLayoutAttributeLeading | ADKLayoutAttributeWidth];
    if (sender.selected) {
        [self.vanillaIceCreamImageView ADKHideViewWidth];
        [self.vanillaIceCreamImageView ADKHideLeadingConstraint];
    } else {
        [self.vanillaIceCreamImageView ADKUnhideViewWidth];
        [self.vanillaIceCreamImageView ADKUnhideLeadingConstraint];
    }
}

@end
