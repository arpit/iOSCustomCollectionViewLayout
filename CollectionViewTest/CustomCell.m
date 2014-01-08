//
//  CustomCell.m
//  CollectionViewTest
//
//  Created by Mathur, Arpit on 1/7/14.
//  Copyright (c) 2014 Comcast. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CustomCellBackground *backgroundView = [[CustomCellBackground alloc] initWithFrame:frame];
        self.selectedBackgroundView = backgroundView;

    }
    return self;
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        // change to our custom selected background view
        NSLog(@"Init with coder?");
        
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
