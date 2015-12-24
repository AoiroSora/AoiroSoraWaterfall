//
//  XJFLayout.h
//  XJFCustomUICollectionViewDemo
//
//  Created by qianfeng on 15/9/2.
//  Copyright (c) 2015年 徐建飞. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XJFLayout;
@protocol XJFLayOutDelegate <NSObject>
@required
- (CGFloat)itemHeightLayOut:(XJFLayout *)layOut indexPath:(NSIndexPath *)indexPath;

@end

@interface XJFLayout : UICollectionViewFlowLayout

@property (nonatomic, assign)NSInteger colNum;
@property (nonatomic, assign)CGFloat interSpace;
@property (nonatomic, assign)UIEdgeInsets edgeInsets;

@property (nonatomic, weak) id<XJFLayOutDelegate>delegate;
@end
