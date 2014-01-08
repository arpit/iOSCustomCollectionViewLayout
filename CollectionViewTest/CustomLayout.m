//
//  CustomLayout.m
//  CollectionViewTest
//
//  Created by Mathur, Arpit on 1/6/14.
//  Copyright (c) 2014 Comcast. All rights reserved.
//

#import "CustomLayout.h"

@implementation CustomLayout

// https://developer.apple.com/library/ios/documentation/uikit/reference/UICollectionViewLayout_class/Reference/Reference.html

- (void) prepareLayout{
   
    cellW = 120;
    cellH = 120;
    
    self.itemAttributes = [[NSMutableArray alloc] init];
    
   
    
    
    
    for (NSUInteger i=0; i < [self.collectionView numberOfSections]; i++) {
        for(NSInteger j=0; j < [self.collectionView numberOfItemsInSection:i]; j++){
            NSIndexPath *indexPath = [NSIndexPath indexPathForItem:j inSection:i];
            UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
            
            if(j ==0){
                 attributes.frame = CGRectIntegral(CGRectMake(0, i*cellH, cellW*2, cellH));
            }
            else{
                attributes.frame = CGRectIntegral(CGRectMake((j+1)*cellW, i*cellH, cellW, cellH));
            }
            
            attributes.frame = CGRectInset(attributes.frame, 10, 10);
           
            [self.itemAttributes addObject:attributes];

        }
    }
}

- (CGSize)collectionViewContentSize{
    return CGSizeMake([self.collectionView numberOfItemsInSection:0]*cellW, [self.collectionView numberOfSections]*cellH);
}

-(UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.itemAttributes objectAtIndex:indexPath.row];
}


-(NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    return [self.itemAttributes filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(UICollectionViewLayoutAttributes *evaluatedObject, NSDictionary *bindings) {
        return CGRectIntersectsRect(rect, [evaluatedObject frame]);
    }]];
}

-(BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return YES;
}















@end
