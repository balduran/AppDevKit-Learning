//
//  ViewController.m
//  ADKModalMaskView
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import "ViewController.h"
#import <AppDevKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *sampleButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sampleButtonTapHandler:(id)sender {
    UIViewController *viewController = [[UIViewController alloc] initWithNibName:nil bundle:nil];
    viewController.view.backgroundColor = [UIColor lightGrayColor];
    viewController.view.frame = CGRectMake(0.0f, 0.0f, 200.0f, 200.0f);
    viewController.view.center = self.view.center;
    ADKModalMaskView *modalView = [[ADKModalMaskView alloc] initWithView:viewController.view
                                                              modalColor:[UIColor colorWithWhite:0.0f alpha:0.5f]
                                           autoDismiss:YES];
    [modalView showInView:self.view
                 withAnimation:YES
                    completion:^(BOOL finished) {
                        // no-op
                    }];
}

@end
