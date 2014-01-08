//
//  CustomLayout.h
//  CollectionViewTest
//
//  Created by Mathur, Arpit on 1/6/14.
//  Copyright (c) 2014 Comcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomLayout : UICollectionViewLayout{
    NSUInteger cellW;
    NSUInteger cellH;
}

@property (nonatomic, retain) NSMutableArray* itemAttributes;

@end
