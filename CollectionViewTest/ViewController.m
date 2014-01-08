//
//  ViewController.m
//  CollectionViewTest
//
//  Created by Mathur, Arpit on 1/6/14.
//  Copyright (c) 2014 Comcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"start!");
    changed = NO;
    
    
   defaultLayout = [[UICollectionViewFlowLayout alloc]init];
    
    NSUInteger w = (cv.frame.size.width - 10)/2;
    
    defaultLayout.itemSize = CGSizeMake(w, 240);
    defaultLayout.headerReferenceSize = CGSizeMake(0, 40);
    defaultLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
    
    customLayout = [[CustomLayout alloc] init];
    
    [cv setCollectionViewLayout:customLayout ];
    //[cv registerClass:[CustomCell class] forCellWithReuseIdentifier:@"FlickrCell"];
    
    [cv registerClass:[MyHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header"];
    
//    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)cv.collectionViewLayout;
//    collectionViewLayout.headerReferenceSize = CGSizeMake(0, 40);
//    collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark CollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
  
    UICollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"FlickrCell" forIndexPath:indexPath];
    //cell.bounds = CGRectMake(0, 0, 120, 120);
    cell.backgroundColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.5];
    //cell.alpha = 0.5;
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    if(kind == UICollectionElementKindSectionHeader){
        MyHeaderView  *cell = [cv dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
        return cell;
    }
    return nil;
}

# pragma mark UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Selected item at %i ", indexPath.item);
}

-(IBAction) onChoiceClicked:(id) sender{
    NSLog(@"Choice: %i", choices.selectedSegmentIndex);
    if(choices.selectedSegmentIndex == 0){
         [cv setCollectionViewLayout:customLayout];
    }
    else{
        [cv setCollectionViewLayout:defaultLayout];
    }
}

@end
