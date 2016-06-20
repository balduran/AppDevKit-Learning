//
//  ViewController.m
//  ADKNibSizeCalculator
//
//  Created by Chih Feng Sung on 6/16/16.
//  Copyright © 2016 Yahoo. All rights reserved.
//

#import "ViewController.h"
#import <ADKNibSizeCalculator.h>
#import "DemoCollectionViewCell.h"
static NSString * const DemoCollectionViewCellIdentifer = @"DemoCollectionViewCell";

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupCollectionView];
    [self.collectionView reloadData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupCollectionView
{
    [self.collectionView registerNib:[UINib nibWithNibName:DemoCollectionViewCellIdentifer bundle:nil] forCellWithReuseIdentifier:DemoCollectionViewCellIdentifer];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:DemoCollectionViewCellIdentifer forIndexPath:indexPath];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat iphone6sWidth = 414.0f;
    CGSize size = CGSizeMake(iphone6sWidth, 50.0f);

    //NOTE: you may use collection view to calculate
    //CGSize size = CGSizeMake(collectionView.frame.size.width, collectionView.frame.size.height / 4.0f);

    //NOTE: using ADKNibSizeCalculator to easy calculate size
    //CGSize size = [[ADKNibSizeCalculator sharedInstance] sizeForNibNamed:DemoCollectionViewCellIdentifer withStyle:ADKNibFixedHeightScaling];

    return size;
}

@end
