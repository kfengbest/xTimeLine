//
//  TimelineViewerViewController.m
//  xTimeline
//
//  Created by fengka on 2/1/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import "TimelineViewerViewController.h"
#import "SnapshotCell.h"
#import "Timeline.h"
#import "Snapshot.h"

@interface TimelineViewerViewController ()

@end

@implementation TimelineViewerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
//    [self.collectionView registerClass:[SnapshotCell class] forCellWithReuseIdentifier:@"SnapshotCell"];

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3; //[[Timeline getInstance].snapshots count];
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    SnapshotCell *myCell = [collectionView
                             dequeueReusableCellWithReuseIdentifier:@"SnapshotCell"
                             forIndexPath:indexPath];
    
//    NSString* path = fileThumbnails[indexPath.row];
//    NSURL *url = [NSURL URLWithString:path];
//    NSData *data = [NSData dataWithContentsOfURL:url];
//    UIImage *img = [UIImage imageWithData:data];
//    
//    myCell.imageView.image = img;
//    myCell.imageName.text = fileThumbnails[indexPath.row];
    
    myCell.imageTime.text = @"aaa";
    
    return myCell;
}

@end
