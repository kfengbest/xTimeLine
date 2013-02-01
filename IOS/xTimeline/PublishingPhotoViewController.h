//
//  PublishingPhotoViewController.h
//  xTimeline
//
//  Created by fengka on 2/1/13.
//  Copyright (c) 2013 adsk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PublishingPhotoViewController : UIViewController
{
    
}
@property(strong, nonatomic) UIImage* photo;
@property(strong, nonatomic) IBOutlet UIImageView* imageView;
@property(strong, nonatomic) IBOutlet UITextField* textEditDesc;

- (IBAction)onPublishPhoto:(id)sender;

@end
