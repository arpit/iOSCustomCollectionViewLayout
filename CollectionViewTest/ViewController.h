//
//  ViewController.h
//  CollectionViewTest
//
//  Created by Mathur, Arpit on 1/6/14.
//  Copyright (c) 2014 Comcast. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyHeaderView.h"
#import "CustomCell.h"
#import "CustomLayout.h"

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>{
    IBOutlet UICollectionView* cv;
    IBOutlet UISegmentedControl* choices;
    bool changed;
    
    UICollectionViewFlowLayout* defaultLayout;
    CustomLayout* customLayout;
    
}

-(IBAction) onChoiceClicked:(id) sender;

@end
