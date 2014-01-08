//
//  MyHeaderView.m
//  CollectionViewTest
//
//  Created by Mathur, Arpit on 1/6/14.
//  Copyright (c) 2014 Comcast. All rights reserved.
//

#import "MyHeaderView.h"

@implementation MyHeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.5];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
