//
//  SnapshotCell.m
//  xTimeline
//
//  Created by fengka on 2/26/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import "SnapshotCell.h"

@implementation SnapshotCell
@synthesize imageView, imageTime, description;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
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
