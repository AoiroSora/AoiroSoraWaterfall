# AoiroSoraWaterfall
一个简单瀑布流的实现

导入AoiroSoraLayout.h	


实现UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout,AoiroSoraLayoutDelegate等代理

    AoiroSoraLayout *layOut = [[AoiroSoraLayout alloc] init];
    layOut.interSpace = 10; //设置每个item间隔
    layOut.edgeInsets = UIEdgeInsetsMake(0, 0, 0, 0); //设置CollectionView的edge
    layOut.colNum = 3; //设置列数
    layOut.delegate = self; //建立代理
    
    _collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layOut];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;

//返回item的高度    
- (CGFloat)itemHeightLayOut:(AoiroSoraLayout *)layOut indexPath:(NSIndexPath *)indexPath 
