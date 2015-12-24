//
//  ViewController.m
//  AoiroSoraWaterfall
//
//  Created by  apple on 15/12/24.
//  Copyright © 2015年 徐建飞. All rights reserved.
//

#import "ViewController.h"
#import "AoiroSoraLayout.h"

#define RGBA(r, g, b, a)    [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout,AoiroSoraLayoutDelegate> {
    UICollectionView *_collectionView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createCollectionView];
}

- (void)createCollectionView {
    AoiroSoraLayout *layOut = [[AoiroSoraLayout alloc] init];
    layOut.interSpace = 10;
    layOut.edgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    layOut.colNum = 3;
    layOut.delegate = self;
    
    _collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layOut];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.backgroundColor = [UIColor whiteColor];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"MyCollectionViewCell"];
    [self.view addSubview:_collectionView];
}

//这里返回每个item的高度
- (CGFloat)itemHeightLayOut:(AoiroSoraLayout *)layOut indexPath:(NSIndexPath *)indexPath {
    
    return  arc4random_uniform(100)+100;
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 30;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor = RGBA(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255), 1);
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
