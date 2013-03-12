//
//  SnapshotCell.h
//  xTimeline
//
//  Created by fengka on 2/26/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SnapshotCell : UICollectionViewCell
{
    
}

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *imageTime;
@property (strong, nonatomic) IBOutlet UILabel *description;

@end
