//
//  PublishingPhotoViewController.m
//  xTimeline
//
//  Created by fengka on 2/1/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import "PublishingPhotoViewController.h"

@interface PublishingPhotoViewController ()
{
    
}
@end

@implementation PublishingPhotoViewController
@synthesize photo, imageView, textEditDesc;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.imageView.image = self.photo;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPublishPhoto:(id)sender {
    
    
    
}

@end
